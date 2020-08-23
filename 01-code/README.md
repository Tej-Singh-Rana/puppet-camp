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
