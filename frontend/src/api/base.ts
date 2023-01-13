export const baseUrl = 'http://localhost:8080/api';

export const getUrl = (paths: string[], query: Record<symbol, string | number> = {}): string => {
  const extraPath: string = paths.join('/');
  const queryParams: string = Object.keys(query).map((key) => {
    return `${key}=${query[Symbol(key)]}`;
  }).join('&');
  if (queryParams === '') {
    return `${baseUrl}/${extraPath}`;
  } else {
    return `${baseUrl}/${extraPath}?${queryParams}`;
  }

}

export const getBikesURL = (id?: number): string => {
  if (id === undefined) {
    return getUrl(['bikes']);
  }
  return getUrl(['bikes', id.toString()]);
}

export const getMakersUrl = (id?: number): string => {
  if (id === undefined) {
    return getUrl(['makers']);
  }
  return getUrl(['makers', id.toString()]);
}
