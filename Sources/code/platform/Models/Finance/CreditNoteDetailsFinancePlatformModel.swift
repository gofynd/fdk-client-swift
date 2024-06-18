

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: CreditNoteDetails
        Used By: Finance
    */

    class CreditNoteDetails: Codable {
        
        
        public var currency: String?
        
        public var currentAmountUsed: Double?
        
        public var cnStatus: String?
        
        public var customerMobileNumber: String?
        
        public var cnReferenceNumber: String?
        
        public var cnDetails: CnDetails?
        
        public var redemptionDetails: [RedemptionDetails]?
        
        public var remainingCnAmount: Int?
        
        public var availableCnBalance: Int?
        
        public var cnAmount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case currency = "currency"
            
            case currentAmountUsed = "current_amount_used"
            
            case cnStatus = "cn_status"
            
            case customerMobileNumber = "customer_mobile_number"
            
            case cnReferenceNumber = "cn_reference_number"
            
            case cnDetails = "cn_details"
            
            case redemptionDetails = "redemption_details"
            
            case remainingCnAmount = "remaining_cn_amount"
            
            case availableCnBalance = "available_cn_balance"
            
            case cnAmount = "cn_amount"
            
        }

        public init(availableCnBalance: Int? = nil, cnAmount: Int? = nil, cnDetails: CnDetails? = nil, cnReferenceNumber: String? = nil, cnStatus: String? = nil, currency: String? = nil, currentAmountUsed: Double? = nil, customerMobileNumber: String? = nil, redemptionDetails: [RedemptionDetails]? = nil, remainingCnAmount: Int? = nil) {
            
            self.currency = currency
            
            self.currentAmountUsed = currentAmountUsed
            
            self.cnStatus = cnStatus
            
            self.customerMobileNumber = customerMobileNumber
            
            self.cnReferenceNumber = cnReferenceNumber
            
            self.cnDetails = cnDetails
            
            self.redemptionDetails = redemptionDetails
            
            self.remainingCnAmount = remainingCnAmount
            
            self.availableCnBalance = availableCnBalance
            
            self.cnAmount = cnAmount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentAmountUsed = try container.decode(Double.self, forKey: .currentAmountUsed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cnStatus = try container.decode(String.self, forKey: .cnStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cnReferenceNumber = try container.decode(String.self, forKey: .cnReferenceNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cnDetails = try container.decode(CnDetails.self, forKey: .cnDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    redemptionDetails = try container.decode([RedemptionDetails].self, forKey: .redemptionDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    remainingCnAmount = try container.decode(Int.self, forKey: .remainingCnAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    availableCnBalance = try container.decode(Int.self, forKey: .availableCnBalance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cnAmount = try container.decode(Int.self, forKey: .cnAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(currentAmountUsed, forKey: .currentAmountUsed)
            
            
            
            
            try? container.encodeIfPresent(cnStatus, forKey: .cnStatus)
            
            
            
            
            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)
            
            
            
            
            try? container.encodeIfPresent(cnReferenceNumber, forKey: .cnReferenceNumber)
            
            
            
            
            try? container.encodeIfPresent(cnDetails, forKey: .cnDetails)
            
            
            
            
            try? container.encodeIfPresent(redemptionDetails, forKey: .redemptionDetails)
            
            
            
            
            try? container.encodeIfPresent(remainingCnAmount, forKey: .remainingCnAmount)
            
            
            
            
            try? container.encodeIfPresent(availableCnBalance, forKey: .availableCnBalance)
            
            
            
            
            try? container.encodeIfPresent(cnAmount, forKey: .cnAmount)
            
            
        }
        
    }
}




