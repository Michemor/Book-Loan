# Book Loan

## Description

A basic book lending library application. The application allows users (without requiring login/authentication) to manage books (create, view, update, delete) and track their lending history. The system records when a book is borrowed and returned, including who borrowed it.

## Features

* Book Management
  * Create new books (title, author).
  * View a list of all books.
  * View details of a single book.
  * Update book information.
  * Delete books.

* Borrowing/Returning
  * Borrow a book (prompting for borrower's name).
  * Return a book.

* Borrowing History
  * View borrowing history for a specific book.
  * View borrowing history for a specific borrower.

## Installation and Set Up

1. Run the command below to clone the repository locally to your device

` git clone https://github.com/Michemor/Book-Loan.git `

```bash
cd book_loan
````

2. Install the dependencies

```bash
   bundle install
```

3. Set up the database and migrate models to the database:

```bash
rails db:create
rails db:migrate
```

4. Run the development Server:

```bash
rails server
```
Follow the link displayed to access the website on a web browser.

## Usage

1. List All books: `https://localhost:3000/books` to view a list of all available books

2. To view details on a specific book:
Click on the book title to display the book details and further update or delete a book.

3. Borrow/Return: On the top right corner, click the button `Borrow Book` where you'll be directed to a page that allows you to borrow a book
Similarly, click on the borrowed book cell to access the page to display the book is returned.

4. Borrowing History

* Borrowing history: displayed on the book's history page

* To view a specific borrower's history, navigate to `borrowings?[borrower_name]`

## Technologies Used

* Ruby on Rails 8
* SQLite3 (default database)
* Tailwind CSS
