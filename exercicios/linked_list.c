#include <stdio.h>
#include <stdlib.h>

struct node{
    int val;
    struct node* next;
};

int main(){
    struct node* head = malloc(sizeof(struct node));
    head->val = 1;
    struct node* second = malloc(sizeof(struct node));
    second->val = 2;
    struct node* third = malloc(sizeof(struct node));
    third->val = 3;
    struct node* fourth = malloc(sizeof(struct node));  
    fourth->val = 4;
    head->next = second;
    second->next = third;
    third->next = fourth;
    fourth->next = NULL;

    struct node* pointer = head;

    while (pointer != NULL){
        printf("%d", pointer->val);
        pointer = pointer->next;
    }
    free(pointer);
    free(fourth);
    free(third);
    free(second);
    free(head);
    return 0;
}