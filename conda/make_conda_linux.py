import yaml
import os
import sys

sys.path = [os.path.join(os.path.dirname(os.path.realpath(__file__)), '')] + sys.path

data = {
    "package": {
        "name": "resfinder",
        "version": version.__version__
    },
    "source": {
        "url": "https://github.com/genomicepidemiology/resfinder/archive/refs/tags/{}.tar.gz".format(version.__version__),
},
    "build": {
        "number": 0,
        "noarch": "python",
        "script": "{{ PYTHON }} -m pip install . --no-deps --ignore-installed -vvv"
    },
    "requirements": {
        "host": [
            "python==3.8",
            "pip"
            "cgelib>=0.7.3",
            "cgecore==1.5.6",
            "tabulate>=0.8.9",
            "pandas>=1.4.2",
            "biopython>=1.79"
        ],
        "run": [
            "cgelib>=0.7.3",
            "cgecore==1.5.6",
            "tabulate>=0.8.9",
            "pandas>=1.4.2",
            "biopython>=1.79"
        ]
    },
    "about": {
        "home": "https://github.com/genomicepidemiology/resfinder",
        "summary": "resfinder test.",
        "license": "Apache-2.0"
    }
}

# Convert the data to YAML and print it
yaml_str = yaml.dump(data, sort_keys=False)

with open('conda/meta.yaml', 'w') as f:
    f.write(yaml_str)
    f.write(yaml_str)