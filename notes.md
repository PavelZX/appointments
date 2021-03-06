1. Use the Ruby on Rails framework. - Yes

2. Your models must:

 - Include at least one has many, at least one belongs to, and at least two has many :through relationships - Yes

	Doctor has many appointments and has many patients through appointments

	Patient has many appointments and has many doctors through appointments

	Appointment belongs to Patient and belongs to Doctor


 - Include a many-to-many relationship implemented with has many :through associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user - Yes


3. Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data. -Yes

4. You must include at least one class level ActiveRecord scope method. a. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort). -Yes
Appointments today scope method and this_week scope method

5. Your application must provide standard user authentication, including signup, login, logout, and passwords. - Yes

6. Your authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc... - Yes

7. You must include and make use of a nested resource with the appropriate RESTful URLs. - Yes


 - You must include a nested new route with form that relates to the parent resource - doctors/:id/appointments/new

 -  You must include a nested index or show route - doctors/:id/appointments/:id && patients/:id/appointments/:id

8. Your forms should correctly display validation errors.
 a. Your fields should be enclosed within a fields_with_errors class - Using initializer to do same thing
 b. Error messages describing the validation failures must be present within the view. - Yes

9. Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app. - Yes

 - Logic present in your controllers should be encapsulated as methods in your models.

 - Your views should use helper methods and partials when appropriate.

 - Follow patterns in the Rails Style Guide and the Ruby Style Guide.

10. **Do not** use scaffolding to build your project. Your goal here is to learn. Scaffold is a way to get up and running quickly, but learning a lot is not one of the benefits of scaffolding. - Yes

**PLAN**

1. Build and stub out models, migrations, controllers. - DONE

2. Add validations. - DONE

3. Add all controller methods and views. - DONE

4. Add all routes. - DONE

5. Build basic version of all views. - DONE

6. Build out sessions and controller. - DONE

7. Add authentication and authorization. - Authorization mostly done, 3rd party authentication - DONE

8. Finish all controller methods. - DONE

9. Build website template. - DONE

10. Finish all views. - DONE

11. DRY up code. - DONE

12. Ensure README is finished and unnecessary code is removed, and ENV keys are hidden. - DONE

13. Add more features, such as friendly_id, address validation using jt-rails-address or mainstreet. - WORKING
