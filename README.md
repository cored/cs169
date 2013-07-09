## CS169 - VM for SaaS class from Berkley [https://www.edx.org/school/uc%20berkeleyx/allcourses]

### Disadvantage of using Virtual Box images
1. Needs a lot of disk space
2. More difficult to share
3. Upgrades are hard

### Usage
1. Install git
2. Install vagrant and virtual box on your machine 
3. git clone git://github.com/cored/cs1691x.git 
4. cd to the directory where you clone the repository
5. vagrant up (You are all set)
6. The directory name for sharing will be /home/<your_username>/host_share (If you want to change it, create a vagrant_setup.rb file in your home directory; there
is an example in the repo - Thanks to David Kerber)

### What's included in this image
1. RVM - Ruby 1.9.
2. Git

### Contributions
Fork the repo and send a pull request 

### Inspiration
https://github.com/davekerber/vagrant-example
