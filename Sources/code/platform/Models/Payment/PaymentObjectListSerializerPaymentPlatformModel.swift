

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentObjectListSerializer
        Used By: Payment
    */

    class PaymentObjectListSerializer: Codable {
        
        
        public var userObject: [String: Any]
        
        public var modifiedOn: String
        
        public var collectedBy: String
        
        public var createdOn: String
        
        public var refundObject: [String: Any]?
        
        public var id: String
        
        public var paymentId: String?
        
        public var currency: String
        
        public var currentStatus: String
        
        public var aggregatorPaymentObject: [String: Any]?
        
        public var paymentMode: String
        
        public var refundedBy: String
        
        public var amountInPaisa: String
        
        public var paymentGateway: String
        
        public var companyId: String
        
        public var paymentModeIdentifier: String
        
        public var applicationId: String
        
        public var allStatus: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case userObject = "user_object"
            
            case modifiedOn = "modified_on"
            
            case collectedBy = "collected_by"
            
            case createdOn = "created_on"
            
            case refundObject = "refund_object"
            
            case id = "id"
            
            case paymentId = "payment_id"
            
            case currency = "currency"
            
            case currentStatus = "current_status"
            
            case aggregatorPaymentObject = "aggregator_payment_object"
            
            case paymentMode = "payment_mode"
            
            case refundedBy = "refunded_by"
            
            case amountInPaisa = "amount_in_paisa"
            
            case paymentGateway = "payment_gateway"
            
            case companyId = "company_id"
            
            case paymentModeIdentifier = "payment_mode_identifier"
            
            case applicationId = "application_id"
            
            case allStatus = "all_status"
            
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            
            self.userObject = userObject
            
            self.modifiedOn = modifiedOn
            
            self.collectedBy = collectedBy
            
            self.createdOn = createdOn
            
            self.refundObject = refundObject
            
            self.id = id
            
            self.paymentId = paymentId
            
            self.currency = currency
            
            self.currentStatus = currentStatus
            
            self.aggregatorPaymentObject = aggregatorPaymentObject
            
            self.paymentMode = paymentMode
            
            self.refundedBy = refundedBy
            
            self.amountInPaisa = amountInPaisa
            
            self.paymentGateway = paymentGateway
            
            self.companyId = companyId
            
            self.paymentModeIdentifier = paymentModeIdentifier
            
            self.applicationId = applicationId
            
            self.allStatus = allStatus
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                userObject = try container.decode([String: Any].self, forKey: .userObject)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                collectedBy = try container.decode(String.self, forKey: .collectedBy)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                do {
                    refundObject = try container.decode([String: Any].self, forKey: .refundObject)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                do {
                    paymentId = try container.decode(String.self, forKey: .paymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                currentStatus = try container.decode(String.self, forKey: .currentStatus)
                
            
            
            
                do {
                    aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
            
            
            
                refundedBy = try container.decode(String.self, forKey: .refundedBy)
                
            
            
            
                amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)
                
            
            
            
                paymentGateway = try container.decode(String.self, forKey: .paymentGateway)
                
            
            
            
                companyId = try container.decode(String.self, forKey: .companyId)
                
            
            
            
                paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                allStatus = try container.decode([String].self, forKey: .allStatus)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userObject, forKey: .userObject)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encode(refundObject, forKey: .refundObject)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encode(paymentId, forKey: .paymentId)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)
            
            
            
            
            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)
            
            
            
            
            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(allStatus, forKey: .allStatus)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentObjectListSerializer
        Used By: Payment
    */

    class PaymentObjectListSerializer: Codable {
        
        
        public var userObject: [String: Any]
        
        public var modifiedOn: String
        
        public var collectedBy: String
        
        public var createdOn: String
        
        public var refundObject: [String: Any]?
        
        public var id: String
        
        public var paymentId: String?
        
        public var currency: String
        
        public var currentStatus: String
        
        public var aggregatorPaymentObject: [String: Any]?
        
        public var paymentMode: String
        
        public var refundedBy: String
        
        public var amountInPaisa: String
        
        public var paymentGateway: String
        
        public var companyId: String
        
        public var paymentModeIdentifier: String
        
        public var applicationId: String
        
        public var allStatus: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case userObject = "user_object"
            
            case modifiedOn = "modified_on"
            
            case collectedBy = "collected_by"
            
            case createdOn = "created_on"
            
            case refundObject = "refund_object"
            
            case id = "id"
            
            case paymentId = "payment_id"
            
            case currency = "currency"
            
            case currentStatus = "current_status"
            
            case aggregatorPaymentObject = "aggregator_payment_object"
            
            case paymentMode = "payment_mode"
            
            case refundedBy = "refunded_by"
            
            case amountInPaisa = "amount_in_paisa"
            
            case paymentGateway = "payment_gateway"
            
            case companyId = "company_id"
            
            case paymentModeIdentifier = "payment_mode_identifier"
            
            case applicationId = "application_id"
            
            case allStatus = "all_status"
            
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            
            self.userObject = userObject
            
            self.modifiedOn = modifiedOn
            
            self.collectedBy = collectedBy
            
            self.createdOn = createdOn
            
            self.refundObject = refundObject
            
            self.id = id
            
            self.paymentId = paymentId
            
            self.currency = currency
            
            self.currentStatus = currentStatus
            
            self.aggregatorPaymentObject = aggregatorPaymentObject
            
            self.paymentMode = paymentMode
            
            self.refundedBy = refundedBy
            
            self.amountInPaisa = amountInPaisa
            
            self.paymentGateway = paymentGateway
            
            self.companyId = companyId
            
            self.paymentModeIdentifier = paymentModeIdentifier
            
            self.applicationId = applicationId
            
            self.allStatus = allStatus
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                userObject = try container.decode([String: Any].self, forKey: .userObject)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                collectedBy = try container.decode(String.self, forKey: .collectedBy)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                do {
                    refundObject = try container.decode([String: Any].self, forKey: .refundObject)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                do {
                    paymentId = try container.decode(String.self, forKey: .paymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                currentStatus = try container.decode(String.self, forKey: .currentStatus)
                
            
            
            
                do {
                    aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
            
            
            
                refundedBy = try container.decode(String.self, forKey: .refundedBy)
                
            
            
            
                amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)
                
            
            
            
                paymentGateway = try container.decode(String.self, forKey: .paymentGateway)
                
            
            
            
                companyId = try container.decode(String.self, forKey: .companyId)
                
            
            
            
                paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                allStatus = try container.decode([String].self, forKey: .allStatus)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userObject, forKey: .userObject)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encode(refundObject, forKey: .refundObject)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encode(paymentId, forKey: .paymentId)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)
            
            
            
            
            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)
            
            
            
            
            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(allStatus, forKey: .allStatus)
            
            
        }
        
    }
}


