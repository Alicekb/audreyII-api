import audreyApi from '../api/AudreyApi';

const weekRequest = () => {
  return {
    type: 'WEEK_REQUEST',
  }
}

const weekSuccess = (days) => {
  return {
    type: 'WEEK_SUCCESS',
    days: days,
  }
}

const weekFailure = (errors) => {
  return {
    type: 'WEEK_FAILURE',
    errors: errors
  }
}

const weekReset = () => {
  return {
    type: 'WEEK_RESET'
  }
}

export const fetchWeek = (id, token) => {
  return dispatch => {
    dispatch(weekRequest())
    return audreyApi.getWeek(id, token)
      .then(res => {
        const { days } = res      
        dispatch(weekSuccess(days))
      })
      .catch(error => {
        dispatch(weekFailure(error))
      })
  }
}

export const resetWeek = () => {
  return dispatch => {
    dispatch(weekReset())
  }
}