import React from 'react'
import BreweryPage from '../components/BreweryPage'

class BreweryContainer extends React.Component {
  
    render(){
        return(
            <div className='row'>
            {
                this.props.allBreweries.map(brewery => <BreweryPage key={brewery.id} brewery={brewery} />)
            }
            </div>
        );
    }
}
export default BreweryContainer;