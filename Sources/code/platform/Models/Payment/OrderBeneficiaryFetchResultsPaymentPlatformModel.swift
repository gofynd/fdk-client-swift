

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: OrderBeneficiaryFetchResults
        Used By: Payment
    */

    class OrderBeneficiaryFetchResults: Codable {
        
        
        public var beneficiaries: [OrderBeneficiaryDetails]?
        
        public var showBeneficiaryDetails: Bool?
        
        public var bank: [OrderBeneficiaryDetails]?
        

        public enum CodingKeys: String, CodingKey {
            
            case beneficiaries = "beneficiaries"
            
            case showBeneficiaryDetails = "show_beneficiary_details"
            
            case bank = "bank"
            
        }

        public init(bank: [OrderBeneficiaryDetails]? = nil, beneficiaries: [OrderBeneficiaryDetails]? = nil, showBeneficiaryDetails: Bool? = nil) {
            
            self.beneficiaries = beneficiaries
            
            self.showBeneficiaryDetails = showBeneficiaryDetails
            
            self.bank = bank
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    beneficiaries = try container.decode([OrderBeneficiaryDetails].self, forKey: .beneficiaries)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    showBeneficiaryDetails = try container.decode(Bool.self, forKey: .showBeneficiaryDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bank = try container.decode([OrderBeneficiaryDetails].self, forKey: .bank)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(beneficiaries, forKey: .beneficiaries)
            
            
            
            
            try? container.encodeIfPresent(showBeneficiaryDetails, forKey: .showBeneficiaryDetails)
            
            
            
            
            try? container.encodeIfPresent(bank, forKey: .bank)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: OrderBeneficiaryFetchResults
        Used By: Payment
    */

    class OrderBeneficiaryFetchResults: Codable {
        
        
        public var beneficiaries: [OrderBeneficiaryDetails]?
        
        public var showBeneficiaryDetails: Bool?
        
        public var bank: [OrderBeneficiaryDetails]?
        

        public enum CodingKeys: String, CodingKey {
            
            case beneficiaries = "beneficiaries"
            
            case showBeneficiaryDetails = "show_beneficiary_details"
            
            case bank = "bank"
            
        }

        public init(bank: [OrderBeneficiaryDetails]? = nil, beneficiaries: [OrderBeneficiaryDetails]? = nil, showBeneficiaryDetails: Bool? = nil) {
            
            self.beneficiaries = beneficiaries
            
            self.showBeneficiaryDetails = showBeneficiaryDetails
            
            self.bank = bank
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    beneficiaries = try container.decode([OrderBeneficiaryDetails].self, forKey: .beneficiaries)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    showBeneficiaryDetails = try container.decode(Bool.self, forKey: .showBeneficiaryDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bank = try container.decode([OrderBeneficiaryDetails].self, forKey: .bank)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(beneficiaries, forKey: .beneficiaries)
            
            
            
            
            try? container.encodeIfPresent(showBeneficiaryDetails, forKey: .showBeneficiaryDetails)
            
            
            
            
            try? container.encodeIfPresent(bank, forKey: .bank)
            
            
        }
        
    }
}


