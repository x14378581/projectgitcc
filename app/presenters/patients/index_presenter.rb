module Patients
    class IndexPresenter
        def status_patients_count
            Patient.status_count
        end
        def patients
           Patient.all 
        end
        
    end
end

    