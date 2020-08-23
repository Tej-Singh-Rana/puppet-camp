# [Puppet Language Basics](https://puppet.com/learning-training/kits/puppet-language-basics/)

#### Resource Declaration
-------------------------

- Hash rocket - `=>`

```
resource_type { 'title':

      attribute => value,

  }
```

#### Classes
------------

- We can define multiple resources within a class.
- A class name must be unique and after declared class name we cannot use again on the same node.

```
class class_name {

	      resource_type {'title':

	          attribute => value,
	        }

	      resource_type {'title':

	          attribute => value,
	        }
}

```

#### Modules
------------

- A module is simply a directory tree containing manifests and other files. 
- This directory structure allows nodes to discover and load classes, resource types, facts, and more.

```
module-name/
     | - manifests
     | - init.pp
     | - files
     | - templates
     | - tests
     | - spec
     | - metadata.json
```

#### Variables
--------------

- Variables begin with a dollar sign($) and the name of the variable, followed by an '=' and the variable's value.
- Variable names are case sensitive and must start with a lowercase letter or _ (underscore).
- Define variable in the double quotes instead of single quotes. 

```
 $variable_name = variable_value

e.g.

   $user = 'john'

   user { "${user}":

       ensure => 'present',
   
       }
``` 

#### Metaparameters
-------------------

- There are four metaparameters: -
  * before - Applied before the target resource.
  * require - Applied after the target resource.
  * notify - Applied before the target resource, but will run again only if the notifying resource changes.
  * subscribe - Applied after the target resource, same as notify it will run only if the target resource changes.

```
package { 'ntp':

	ensure => present,
	before => File['/etc/ntp.conf'],

}

file { 'ntp':

	ensure => file,
	require => Package['ntp'],

}
```
