import React from 'react'

const BreweryPage = (props) => {

    // brewery images = []

    return (
        <div className='column'>
            <div className='card'>
                <ul>
                    <h2>{props.brewery.name}</h2>

                        City: {props.brewery.city}<br />
                        State: {props.brewery.state}<br />
                        Phone Number: {props.brewery.phone ? props.brewery.phone : 'NA'}<br />
                        Website: {props.brewery.website_url ? props.brewery.website_url : 'NA'}
                    {/* // picture: {chooses random image from array } */}
                </ul>

            </div>
        </div>
    )

}
export default BreweryPage;
