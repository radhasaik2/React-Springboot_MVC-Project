const BASE_URL = 'http://localhost:8080/api';

async function apiCall(endpoint, options = {}) {
  try {
    const url = `${BASE_URL}${endpoint}`;
    console.log('🟡 API call to:', url);

    const response = await fetch(url, {
      headers: {
        'Content-Type': 'application/json',
        ...options.headers,
      },
      ...options,
    });

    console.log('🟢 Response status:', response.status);

    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }

    const data = await response.json();
    return { data, status: response.status };
  } catch (error) {
    console.error('🔴 API call failed:', error);
    throw error;
  }
}

// Movies API
export const moviesAPI = {
  getAll: (page = 0, size = 10) => apiCall(`/movies?page=${page}&size=${size}`),
  getById: (id) => apiCall(`/movies/${id}`),
  search: (title) => apiCall(`/movies/search?title=${encodeURIComponent(title)}`),
};

// Shows API
export const showsAPI = {
  getByMovie: (movieId) => apiCall(`/shows/movie/${movieId}`),
};

// Bookings API
export const bookingsAPI = {
  create: (booking) => apiCall('/bookings', {
    method: 'POST',
    body: JSON.stringify(booking),
  }),
  getByUser: (userId) => apiCall(`/bookings/user/${userId}`),
};

export default apiCall;
