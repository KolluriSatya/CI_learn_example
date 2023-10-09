import ruamel.yaml as yaml

# Create an ordered dictionary for each section
package = yaml.comments.CommentedMap()
package['name'] = 'resfinder'

with open('src/resfinder/version.py', 'r') as f:
    for line in f:
        if line.startswith('#define'):
            package['version'] = line.split()[2].replace("\"", "")

source = yaml.comments.CommentedMap()
source['url'] = 'https://bitbucket.org/genomicepidemiology/{}/get/{}.tar.gz'.format(package['name'], package['version'])

build = yaml.comments.CommentedMap()
build['number'] = 0
build['noarch'] = 'python'

requirements = yaml.comments.CommentedMap()
requirements['build'] = [ "cgecore==1.5.6",
                          "tabulate>=0.8.9",
                          "pandas>=1.4.2",
                          "biopython>=1.79"]
requirements['host'] = [ "cgecore==1.5.6",
                         "tabulate>=0.8.9",
                         "pandas>=1.4.2",
                         "biopython>=1.79"]
requirements['run'] = [ "cgecore==1.5.6",
                        "tabulate>=0.8.9",
                        "pandas>=1.4.2",
                        "biopython>=1.79"]

about = yaml.comments.CommentedMap()
about['home'] = 'https://bitbucket.org/genomicepidemiology/resfinder'
about['summary'] = 'resfinder test'
about['license'] = 'Apache-2.0'

extra = yaml.comments.CommentedMap()
identifiers = yaml.comments.CommentedMap()
extra['identifiers'] = identifiers

# Create a dictionary for the entire YAML content
data = yaml.comments.CommentedMap()
data['package'] = package
data['source'] = source
data['build'] = build
data['requirements'] = requirements
data['about'] = about
data['extra'] = extra

# Serialize the data to YAML and print it
yaml_str = yaml.dump(data, Dumper=yaml.RoundTripDumper).replace("\"{{", "{{").replace("}}\"", "}}")
print(yaml_str)

with open('conda/meta.yaml', 'w') as f:
    f.write(yaml_str)