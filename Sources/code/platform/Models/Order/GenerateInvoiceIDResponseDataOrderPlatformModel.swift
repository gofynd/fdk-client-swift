

import Foundation


public extension PlatformClient.Order {
    /*
        Model: GenerateInvoiceIDResponseData
        Used By: Order
    */

    class GenerateInvoiceIDResponseData: Codable {
        
        
        public var shipmentId: String?
        
        public var success: Bool?
        
        public var invoiceId: String?
        
        public var errorMessage: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentId = "shipment_id"
            
            case success = "success"
            
            case invoiceId = "invoice_id"
            
            case errorMessage = "error_message"
            
        }

        public init(errorMessage: Bool? = nil, invoiceId: String? = nil, shipmentId: String? = nil, success: Bool? = nil) {
            
            self.shipmentId = shipmentId
            
            self.success = success
            
            self.invoiceId = invoiceId
            
            self.errorMessage = errorMessage
            
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
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceId = try container.decode(String.self, forKey: .invoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorMessage = try container.decode(Bool.self, forKey: .errorMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encode(invoiceId, forKey: .invoiceId)
            
            
            
            
            try? container.encode(errorMessage, forKey: .errorMessage)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: GenerateInvoiceIDResponseData
        Used By: Order
    */

    class GenerateInvoiceIDResponseData: Codable {
        
        
        public var shipmentId: String?
        
        public var success: Bool?
        
        public var invoiceId: String?
        
        public var errorMessage: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentId = "shipment_id"
            
            case success = "success"
            
            case invoiceId = "invoice_id"
            
            case errorMessage = "error_message"
            
        }

        public init(errorMessage: Bool? = nil, invoiceId: String? = nil, shipmentId: String? = nil, success: Bool? = nil) {
            
            self.shipmentId = shipmentId
            
            self.success = success
            
            self.invoiceId = invoiceId
            
            self.errorMessage = errorMessage
            
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
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceId = try container.decode(String.self, forKey: .invoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorMessage = try container.decode(Bool.self, forKey: .errorMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encode(invoiceId, forKey: .invoiceId)
            
            
            
            
            try? container.encode(errorMessage, forKey: .errorMessage)
            
            
        }
        
    }
}


