
/*


*/

{{ config(materialized='table') }}

with patient_data as (

    select count(Date) as visits, PatientID from {{source('patient_visits', 'patient_visits')}} group by PatientID

)

select *
from patient_data
