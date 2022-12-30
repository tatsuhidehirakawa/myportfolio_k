package graph

// This file will be automatically regenerated based on the schema, any resolver implementations
// will be copied through when generating and any unknown code will be moved to the end.
// Code generated by github.com/99designs/gqlgen version v0.17.22

import (
	"context"
	"log"

	"github.com/gqlgensamples/golang-gqlgen-postgresql-example/graph/model"
)

// User is the resolver for the User field.
func (r *queryResolver) User(ctx context.Context, id string) (*model.User, error) {
	user, err := r.Repo.User.GetUser(ctx, id)
	if err != nil {
		log.Print("failed to get user")
		return nil, err
	}

	output := &model.User{
		ID:   user.ID,
		Name: user.Name,
	}

	return output, nil
}

// Query returns QueryResolver implementation.
func (r *Resolver) Query() QueryResolver { return &queryResolver{r} }

type queryResolver struct{ *Resolver }
