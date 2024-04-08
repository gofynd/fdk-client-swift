

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: ShipmentRefundRequestMeta
        Used By: Payment
    */

    class ShipmentRefundRequestMeta: Codable {
        
        
        public var shipmentId: String?
        
        public var name: String?
        
        public var utr: String?
        
        public var notes: String?
        
        public var billingEmployeeCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentId = "shipment_id"
            
            case name = "name"
            
            case utr = "utr"
            
            case notes = "notes"
            
            case billingEmployeeCode = "billing_employee_code"
            
        }

        public init(billingEmployeeCode: String? = nil, name: String? = nil, notes: String? = nil, shipmentId: String? = nil, utr: String? = nil) {
            
            self.shipmentId = shipmentId
            
            self.name = name
            
            self.utr = utr
            
            self.notes = notes
            
            self.billingEmployeeCode = billingEmployeeCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    utr = try container.decode(String.self, forKey: .utr)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    notes = try container.decode(String.self, forKey: .notes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingEmployeeCode = try container.decode(String.self, forKey: .billingEmployeeCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(utr, forKey: .utr)
            
            
            
            
            try? container.encodeIfPresent(notes, forKey: .notes)
            
            
            
            
            try? container.encodeIfPresent(billingEmployeeCode, forKey: .billingEmployeeCode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: ShipmentRefundRequestMeta
        Used By: Payment
    */

    class ShipmentRefundRequestMeta: Codable {
        
        
        public var shipmentId: String?
        
        public var name: String?
        
        public var utr: String?
        
        public var notes: String?
        
        public var billingEmployeeCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentId = "shipment_id"
            
            case name = "name"
            
            case utr = "utr"
            
            case notes = "notes"
            
            case billingEmployeeCode = "billing_employee_code"
            
        }

        public init(billingEmployeeCode: String? = nil, name: String? = nil, notes: String? = nil, shipmentId: String? = nil, utr: String? = nil) {
            
            self.shipmentId = shipmentId
            
            self.name = name
            
            self.utr = utr
            
            self.notes = notes
            
            self.billingEmployeeCode = billingEmployeeCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    utr = try container.decode(String.self, forKey: .utr)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    notes = try container.decode(String.self, forKey: .notes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingEmployeeCode = try container.decode(String.self, forKey: .billingEmployeeCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(utr, forKey: .utr)
            
            
            
            
            try? container.encodeIfPresent(notes, forKey: .notes)
            
            
            
            
            try? container.encodeIfPresent(billingEmployeeCode, forKey: .billingEmployeeCode)
            
            
        }
        
    }
}


