def main():
    try:  # for invalide
        a = int(input("Hey, Enter the number : "))
        print(a)
        return

    except Exception as e:
        print(e)
        return

    finally:
        print("Hey i am inside of finally")

main()
