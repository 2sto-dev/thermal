from setuptools import setup, find_packages

setup(
    name='adrese',
    version='0.1',
    packages=find_packages(include=['adrese', 'adrese.*']),  # Include pachetul `adrese`
    include_package_data=True,
    install_requires=[
        'django>=4.2',  # Versiunea Django folosită
    ],
    classifiers=[
        "Framework :: Django",
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
)