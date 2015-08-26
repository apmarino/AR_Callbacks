#Active Record Callbacks

Callbacks allow you to trigger logic before or after an alteration of an object's state.
Callbacks are methods that get called at certain moments of an object's life cycle. With callbacks it is possible to write code that will run whenever an Active Record object is created, saved, updated, deleted, validated, or loaded from the database.

In order to use callbacks you need to register them.
```Ruby
class Klass < ActiveRecord::Base
	callback_name :method_to_call, on: [:create, :update, :destroy]

	private
		def	method_to_call
			#Code Stuff
		end
end
```
##Available Callbacks


###1.Creating an Object

  * before_validation.
  * after_validation.
  * before_save.
  * around_save.
  * before_create.
  * around_create.
  * after_create.
  * after_save.
  * after_commit/after_rollback.

###2.Updating and Object

  * before_validation
  * after_validation
  * before_save
  * around_save
  * before_update
  * around_update
  * after_update
  * after_save
  * after_commit/after_rollback

###3.Destroying an Object

  * before_destroy
  * around_destroy
  * after_destroy
  * after_commit/after_rollback

 ###Active Record Callbacks Resources

[Callbacks](http://guides.rubyonrails.org/active_record_callbacks.html)
