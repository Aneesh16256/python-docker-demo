#!/usr/bin/env python3

def main():
    print("Hello from the Dockerized Python app!")
    print(f"Current Python version: {__import__('sys').version}")

if __name__ == "__main__":
    main()