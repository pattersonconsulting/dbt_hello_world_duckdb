
/*


*/

{{ config(materialized='table') }}

with patient_data_summed as (

    select * from {{ref('patient_visits_summed_model')}} where visits >= 5

)

select *
from patient_data_summed
