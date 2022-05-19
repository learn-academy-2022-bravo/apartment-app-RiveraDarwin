import React, { Component } from "react";
import { Card, CardTitle, Col, CardImg } from "reactstrap";

export default class ApartmentIndex extends Component {
  render() {
    return (
      <>
        <h3>Apartment Index</h3>
        <h3>Look at all those apartments </h3>
        <>
          <Col sm="6">
            {this.props.apartments &&
              this.props.apartments.map((apartment) => {
                return (
                  <Card body key={apartment.street}>
                    <CardImg className="imgs" alt="Available listing image" src={apartment.image} />
                    <br />
                    <CardTitle>
                      <h3>{apartment.street}</h3>
                      <h4>{apartment.price}</h4>
                      <h4>Bedrooms:{apartment.bedrooms}</h4>
                      <h4>Bathroom:{apartment.bathrooms}</h4>
                    </CardTitle>
                  </Card>
                );
              })}
          </Col>
        </>
      </>
    );
  }
}
