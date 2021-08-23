A tutorial about how we can use Jenkins to automate tasks that will help us improve the quality of our code.

This a tutorial series that will contain several videos. The objective of this tutorial is:

* See how we can use Jenkins to automate tasks
* Improve the quality of our code by running different tools like Documentation generation, automated tests
  and static analyzers
* Use Jenkins pipelines to do the job

## What you need

In order to follow this tutorial, you need:

* The latest version of Virtual Box ([download it from here](https://www.virtualbox.org/wiki/Downloads))
* The latest version of Vagrant (Follow the installation instructions of your OS [here](https://www.vagrantup.com/downloads))
* git (which you most likeli have already installed)

We will create a virtual machine in which we will do everything. This way, when you are done with the tutorial, 
your host computer will be clean; the only extra software that was installed was Virtual Box and Vagrant, which
should be easy to uninstall.

You can use any hypervisor or virtualization tool of your choine. And you can create the virtual machine 
using other tools instead of Vagrant. Or, why not, 
you can even copy and paste the provisioning scripts in whatever ubuntu box you may have. 
But if you decide to do that you are on your own, since all the tutorials will be prepared to run
inside the ubuntu virtual box that I will create using Vagrant. You can contact me in the 
discussion section of the repository and I will try to assist you with your exotic installation method.

## The virtual machine

In order to create the virtual machine, all you need to do is:

* Clone this repository
```
> git clone https://github.com/alfonsoalba-cursos/automate-code-quality-using-jenkins.git
```

* `cd` into the repository
```
> cd automate-code-quality-using-jenkins
```
* Create the virtual machine (this command can take a few minutes):

```
> vagrant up --provider virtualbox
```

If you get no error, then you should be fine to finish the installation of Jenkins pointing your browser
to `localhost:8080`.


