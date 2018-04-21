module Patients
    class IndexPresenter
        def status_patients_count
            Patient.status_count
        end
        
        def patients
           Patient.all 
           if params[:search]
             @patients = Patient.search(params[:search]).order("created_at DESC")
           else
             @patients = Patient.all.order('created_at DESC')
           end
        end
        
        def patients
           Patient.all 
        end
        
    end
end

    