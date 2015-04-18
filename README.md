## Enumerable Methods

You learned about the Enumerable module that gets mixed in to the Array and Hash classes (among others) and provides you with lots of handy iterator methods.  To prove that there's no magic to it, you're going to rebuild those methods.

### Your Task
1. Create a script file to house your methods and run it in IRB to test them later.
2. Add your new methods onto the existing Enumerable module.  Ruby makes this easy for you because any class or module can be added to without trouble ... just do something like:

    ```language-ruby
        module Enumerable
          def my_each
            # your code here
          end
        end
    ```

1. Create `#my_each`, a method that is identical to `#each` but (obviously) does not use `#each`.  You'll need to remember the `yield` statement.  Make sure it returns the same thing as `#each` as well.
2. Create `#my_each_with_index` in the same way.
3. Create `#my_select` in the same way, though you may use `#my_each` in your definition (but not `#each`).
4. Create `#my_all?` (continue as above)
5. Create `#my_any?`
6. Create `#my_none?`
6. Create `#my_count`
4. Create `#my_map`
6. Create `#my_inject`
7. Test your `#my_inject` by creating a method called `#multiply_els` which multiplies all the elements of the array together by using `#my_inject`, e.g. `multiply_els([2,4,5]) #=> 40`
7. Modify your `#my_map` method to take a proc instead.
8. Modify your `#my_map` method to take either a proc or a block, executing the block only if both are supplied (in which case it would execute both the block AND the proc).

**Quick Tips:**

* Remember `yield` and the `#call` method.