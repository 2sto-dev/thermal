from setuptools import setup, find_packages

setup(
    name='adrese',
    version='0.1',
    packages=find_packages(include=['adrese', 'adrese.*']),  # Asigură-te că pachetul este inclus
    include_package_data=True,
    install_requires=[
        'django>=5.1.5',
    ],
    classifiers=[
        "Framework :: Django",
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
)
