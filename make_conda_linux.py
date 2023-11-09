import yaml
import os
import sys
import subprocess

sys.path = [os.path.join(os.path.dirname(os.path.realpath(__file__)), '')] + sys.path

import src.resfinder.version as version

data = {
    "package": {
        "name": "resfinder",
        "version": version.__version__
    },
    "source": {
        "url": "https://files.pythonhosted.org/packages/ce/9c/f87f17e82b6666e3d3214cdf2970e46585108b5821ef80d2d58bf4470e86/resfinder-4.3.3.tar.gz",
        "sha256": "9b45c520ae8e29a7035665959b9250e6a8c2d43b389d3da8299b6d493d14d9b7"
    },
    "build": {
        "number": 0,
        "noarch": "python",
        "script": "{{ PYTHON }} -m pip3 install . --no-deps --ignore-installed -vvv"
    },
    "requirements": {
        "host": [
            "python>=3.8",
            "kma>=1.4.9",
            "cgecore>=1.5.6",
            "tabulate>=0.8.9",
            "pandas>=1.4.2",
            "biopython>=1.79"
        ],
        "run": [
            "python>=3.8",
            "kma>=1.4.9",
            "cgecore>=1.5.6",
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
os.system('mkdir conda')
yaml_str = yaml.dump(data, sort_keys=False)

with open('conda/meta.yaml', 'w') as f:
    f.write(yaml_str)