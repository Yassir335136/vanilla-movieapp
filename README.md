# Vanilla PHP Movie Application

Welcome to the **Vanilla PHP Movie Application**! This project was created with the sole purpose of pushing my boundaries and seeing what I could accomplish using just **vanilla PHP**—without relying on any frameworks. It’s a learning exercise as much as it is a demonstration of building a functional web application from scratch.

## Why I Built This

I’ve always been curious about the raw power of PHP and wanted to explore what could be achieved without the crutches of a modern framework. The goal was to truly understand the fundamentals and gain a deeper appreciation for the work frameworks handle behind the scenes. Through this project, I aimed to:

1. **Write Pagination from Scratch**  
   I wanted to build a robust pagination system entirely on my own, handling the intricacies of navigating through large datasets efficiently.

2. **Automate Movie Data Insertion**  
   Using the **TMDB API**, I developed a system to automatically fetch movie data and insert it into my database. This required designing workflows to interact with the API, process the data, and store it seamlessly.

3. **Implement a Favorites Feature**  
   I wanted to explore how to allow users to **favorite movies**, save those preferences, and manage them—again, all using vanilla PHP.

## Key Features

- **Custom Pagination**  
  Navigate through movies in the database with a completely handcrafted pagination system.

- **TMDB API Integration**  
  Automatically fetch and update the movie database with information from the TMDB API.

- **Favorite Movies**  
  A straightforward way for users to favorite and manage their list of preferred movies.

## Learning Goals

This project wasn’t just about creating something functional but also about learning and experimenting with:

- Designing and implementing database schemas.
- Making HTTP requests and processing JSON responses from APIs.
- Writing clean, reusable code in pure PHP.
- Handling user input and state (like favorites) in a secure and efficient way.
- Debugging and optimizing custom-built solutions.

## How to Use

1. Clone this repository to your local machine.
   ```bash
   git clone <repository-url>
   ```
2. Run composer install.
3. Run the application on a PHP server. For example:
   ```bash
   php -S localhost:8000
   ```
4. Access the application via your browser at `http://localhost:8000`.

## Final Thoughts

This project isn’t about reinventing the wheel; it’s about understanding how the wheel works. While frameworks provide countless tools and conveniences, there’s a unique satisfaction in building something from the ground up. I hope this serves as a helpful reference for anyone curious about the raw potential of vanilla PHP.

Feel free to fork, experiment, or use this as inspiration for your own projects. If you have questions or feedback, don’t hesitate to reach out!

Happy coding! 🚀