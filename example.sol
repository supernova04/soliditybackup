pragma solidity ^0.5.0;

contract hello{
    struct Book{
        string kode;
        string title;
        string author;
    }
    
    mapping(string => Book) public books;
    
    function addBook(string memory _kode, string memory _title, string memory _author) public {
        books[_kode] = Book(_kode, _title, _author);
    } 
    

    function deleteBook(string memory _kode) public {   
        delete books[_kode];
    }
}