# adding categories to blog posts

## Backend
 - create a table categories
  * name
  * description
 - build association
  * add many-to-many association between blog_posts and categories
  * create a join table for blog_posts and categories
  * use `has_and_belongs_to_many` association in blog_post and category model
  * adding index to the foreign keys

  * make posts controller to accept categories
## front end
  - add category_ids field to for post creation or edit
  - add category names in the post show


