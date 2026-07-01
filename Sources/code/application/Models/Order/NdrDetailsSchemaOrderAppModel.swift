

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: NdrDetailsSchema
        Used By: Order
    */
    class NdrDetailsSchema: Codable {
        
        public var showNdrForm: Bool?
        
        public var nonEditableAddressFields: [String]?
        
        public var deliveryScheduledDate: String?
        
        public var allowedDeliveryWindow: NdrDeliveryWindowSchema?
        
        public var failureReason: String?
        
        public var deliveryPartnerRemarks: String?
        
        public var customerRemarks: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case showNdrForm = "show_ndr_form"
            
            case nonEditableAddressFields = "non_editable_address_fields"
            
            case deliveryScheduledDate = "delivery_scheduled_date"
            
            case allowedDeliveryWindow = "allowed_delivery_window"
            
            case failureReason = "failure_reason"
            
            case deliveryPartnerRemarks = "delivery_partner_remarks"
            
            case customerRemarks = "customer_remarks"
            
        }

        public init(allowedDeliveryWindow: NdrDeliveryWindowSchema? = nil, customerRemarks: String? = nil, deliveryPartnerRemarks: String? = nil, deliveryScheduledDate: String? = nil, failureReason: String? = nil, nonEditableAddressFields: [String]? = nil, showNdrForm: Bool? = nil) {
            
            self.showNdrForm = showNdrForm
            
            self.nonEditableAddressFields = nonEditableAddressFields
            
            self.deliveryScheduledDate = deliveryScheduledDate
            
            self.allowedDeliveryWindow = allowedDeliveryWindow
            
            self.failureReason = failureReason
            
            self.deliveryPartnerRemarks = deliveryPartnerRemarks
            
            self.customerRemarks = customerRemarks
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                showNdrForm = try container.decode(Bool.self, forKey: .showNdrForm)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                nonEditableAddressFields = try container.decode([String].self, forKey: .nonEditableAddressFields)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                deliveryScheduledDate = try container.decode(String.self, forKey: .deliveryScheduledDate)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                allowedDeliveryWindow = try container.decode(NdrDeliveryWindowSchema.self, forKey: .allowedDeliveryWindow)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                failureReason = try container.decode(String.self, forKey: .failureReason)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                deliveryPartnerRemarks = try container.decode(String.self, forKey: .deliveryPartnerRemarks)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                customerRemarks = try container.decode(String.self, forKey: .customerRemarks)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(showNdrForm, forKey: .showNdrForm)
            
            
            
            try? container.encodeIfPresent(nonEditableAddressFields, forKey: .nonEditableAddressFields)
            
            
            
            try? container.encodeIfPresent(deliveryScheduledDate, forKey: .deliveryScheduledDate)
            
            
            
            try? container.encodeIfPresent(allowedDeliveryWindow, forKey: .allowedDeliveryWindow)
            
            
            
            try? container.encodeIfPresent(failureReason, forKey: .failureReason)
            
            
            
            try? container.encodeIfPresent(deliveryPartnerRemarks, forKey: .deliveryPartnerRemarks)
            
            
            
            try? container.encodeIfPresent(customerRemarks, forKey: .customerRemarks)
            
            
        }
        
    }
}
