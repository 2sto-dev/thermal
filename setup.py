from setuptools import setup, find_packages

setup(
    name="adrese",
    version="0.1",
    packages=find_packages(
        include=["adrese", "adrese.*"]
    ),  # Include corect folderul `adrese`
    include_package_data=True,  # Include fișiere statice și migrații
    install_requires=[
        "django>=5.1.5",  # Versiunea minimă de Django necesară
    ],
    classifiers=[
        "Framework :: Django",
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
)
