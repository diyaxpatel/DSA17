#include <iostream>
using namespace std;

struct Node
{
    int data;
    Node *prev, *next;
};

Node* createList(string s)
{
    Node *head = NULL, *tail = NULL;

    for(int i = 0; i < s.length(); i++)
    {
        Node *newnode = new Node;

        newnode->data = s[i] - '0';
        newnode->prev = tail;
        newnode->next = NULL;

        if(head == NULL)
            head = newnode;
        else
            tail->next = newnode;

        tail = newnode;
    }

    return tail;
}

int main()
{
    string a, b;

    cout << "Enter first binary number: ";
    cin >> a;

    cout << "Enter second binary number: ";
    cin >> b;

    Node *p = createList(a);
    Node *q = createList(b);

    int carry = 0;
    string result = "";

    while(p != NULL || q != NULL || carry != 0)
    {
        int sum = carry;

        if(p != NULL)
        {
            sum += p->data;
            p = p->prev;
        }

        if(q != NULL)
        {
            sum += q->data;
            q = q->prev;
        }

        result = char('0' + sum % 2) + result;
        carry = sum / 2;
    }

    cout << "Binary Addition: " << result;

    return 0;
}
