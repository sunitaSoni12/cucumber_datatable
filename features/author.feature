Feature: Part C scenario

    Scenario Outline: correct non-zero number of books found by author
        Given I have the following books in the store
            | title                                | author      |
            | The devile in the white city         | Eric Larson |
            | The lion, the witch and the wardrobe | C.S. Lewis  |
            | In the garden of beast               | Eric Larson |
        When I search book by author '<author>'
        Then I find <bookcount> books

        Examples:
            | author      | bookcount |
            | Eric Larson | 2         |
            | C.S. Lewis  | 1         |
