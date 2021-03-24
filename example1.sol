pragma solidity ^0.5.0;

contract hello{
    struct Book{
        string kodedokumen;
        string namadokumen;
        string namattddokumen;
        string namaverifikator;
        string tanggalverifikasi;
    }

    mapping(string => Book) public books;
    
    function addBook(string memory _kodedokumen, string memory _namadokumen, string memory _namattddokumen, string memory _namaverifikator, string memory _tanggalverifikasi) public {
        books[_kodedokumen] = Book(_kodedokumen, _namadokumen, _namattddokumen, _namaverifikator, _tanggalverifikasi);
    } 
    

    function deleteBook(string memory _kodedokumen) public {   
        delete books[_kodedokumen];
    }
}