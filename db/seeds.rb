# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Tag.destroy_all
tags = Tag.create([{
	name: "Authenitcation"
}, {
	name: "Authorization"
}])

Category.destroy_all
categories = Category.create([{
	name: "Technology"
}, {
	name: "Science Fiction"
}, {
	name: "Science Non-Fiction"
}])

Post.create([{
	title: "How to build a Rails API",
	content: "This is a blog post about how to build a Rails API",
	categories: [categories.first],
	tags: [tags.first, tags.last]
}, {
	title: "How to build a React App",
	content: "This is a blog post about how to build a React App",
	categories: [categories.first],
	tags: [tags.first, tags.last]
}, {
	title: "How to build a Vue App",
	content: "This is a blog post about how to build a Vue App",
	categories: [categories.first],
	tags: [tags.first, tags.last]
}, {
	title: "How to build a Angular App",
	content: "This is a blog post about how to build a Angular App",
	categories: [categories.first],
	tags: [tags.first, tags.last]
}, {
	title: "How to build a Node App",
	content: "This is a blog post about how to build a Node App",
	categories: [categories.first],
	tags: [tags.first, tags.last]
}, {
	title: "How to build a Express App",
	content: "This is a blog post about how to build a Express App",
	categories: [categories.first],
	tags: [tags.first, tags.last]
}, {
	title: "How to build a Ruby App",
	content: "This is a blog post about how to build a Ruby App",
	categories: [categories.first],
	tags: [tags.first, tags.last]
}])

