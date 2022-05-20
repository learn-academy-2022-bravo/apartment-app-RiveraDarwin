import React, { Component } from "react";
import { Card, CardTitle, Col, CardImg } from "reactstrap";

class ApartmentShow extends Component {
  render() {
    let { apartment } = this.props
    
    return (
      <>
        <h3>Apartment Show</h3>
        { apartment &&
          <Col sm="6">
            <Card body key={apartment.street}>
              <CardImg
                className="imgs"
                alt="Available listing image"
                src={apartment.image}
              />
              <br />
              <CardTitle>
                <h3>{apartment.street}</h3>
                <h4>{apartment.price}</h4>
                <h4>Bedrooms:{apartment.bedrooms}</h4>
                <h4>Bathroom:{apartment.bathrooms}</h4>
              </CardTitle>
            </Card>
          </Col>
        }
      </>
    );
  }
}

export default ApartmentShow;
