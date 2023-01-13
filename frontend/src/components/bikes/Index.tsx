import { getBikesURL } from '../../api/base';
import { useEffect, useState } from 'react';

export interface IBike {
  id: number,
  name: string,
  country: string,
  maker: {
    id: number,
    name: string,
    country: string
  }
}

type Bike = {
  id: number,
  name: string,
  country: string,
  makerId: number
}

const BikesIndex = () => {
  const [bikes, setData] = useState<Bike[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const url = getBikesURL();
    fetch(url)
      .then((response) => response.json())
      .then((responseData) => {
        return responseData.map((data: IBike) => {
          return {
            id: data.id,
            name: data.name,
            country: data.country,
            makerId: Number(data.maker.id)
          }
        });
      })
      .then((bikesData) => {
        setData(bikesData);
      })
      .catch((err) => {
        setError(err.message);
        setData([]);
      })
      .finally(() => {
        setLoading(false);
      });
  }, []);

  return (
    <div className='App'>
      <h1>Bike Index Page</h1>
      {loading && <div>A moment please...</div>}
      {error && (
        <div>{`There is a problem fetching the post data - ${error}`}</div>
      )}
      <ul>
        {
          bikes && bikes.map((bike) => {
            return (
              <div key={bike.id}>
                <li>{bike.name}</li>
                <li>{bike.country}</li>
              </div>
            );
          })
        }
      </ul>
    </div>
  );
}

export default BikesIndex;
