#include <iostream>
using namespace std;

struct Node
{
    int data;
    Node *next;
};

Node* createList()
{
    Node *head = NULL, *temp, *newnode;
    int n;

    cout << "Enter number of nodes: ";
    cin >> n;

    for(int i = 0; i < n; i++)
    {
        newnode = new Node;

        cout << "Enter data: ";
        cin >> newnode->data;

        newnode->next = NULL;

        if(head == NULL)
            head = newnode;
        else
            temp->next = newnode;

        temp = newnode;
    }

    return head;
}

void display(Node *head)
{
    while(head != NULL)
    {
        cout << head->data << " ";
        head = head->next;
    }
}

int main()
{
    cout << "First Linked List\n";
    Node *head1 = createList();

    cout << "Second Linked List\n";
    Node *head2 = createList();

    if(head1 == NULL)
        head1 = head2;
    else
    {
        Node *temp = head1;

        while(temp->next != NULL)
            temp = temp->next;

        temp->next = head2;
    }

    cout << "\nConcatenated List: ";
    display(head1);

    return 0;
}
