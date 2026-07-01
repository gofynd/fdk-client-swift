

import Foundation


public extension PlatformClient.Order {
    /*
        Model: GenerateInvoiceIDErrorResponseData
        Used By: Order
    */

    class GenerateInvoiceIDErrorResponseData: Codable {
        
        
        public var shipmentId: String?
        
        public var success: Bool?
        
        public var invoiceId: Bool?
        
        public var errorMessage: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentId = "shipment_id"
            
            case success = "success"
            
            case invoiceId = "invoice_id"
            
            case errorMessage = "error_message"
            
        }

        public init(errorMessage: String? = nil, invoiceId: Bool? = nil, shipmentId: String? = nil, success: Bool? = nil) {
            
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
                    invoiceId = try container.decode(Bool.self, forKey: .invoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorMessage = try container.decode(String.self, forKey: .errorMessage)
                
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
            
            
            
            
            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)
            
            
            
            
            try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: GenerateInvoiceIDErrorResponseData
        Used By: Order
    */

    class GenerateInvoiceIDErrorResponseData: Codable {
        
        
        public var shipmentId: String?
        
        public var success: Bool?
        
        public var invoiceId: Bool?
        
        public var errorMessage: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentId = "shipment_id"
            
            case success = "success"
            
            case invoiceId = "invoice_id"
            
            case errorMessage = "error_message"
            
        }

        public init(errorMessage: String? = nil, invoiceId: Bool? = nil, shipmentId: String? = nil, success: Bool? = nil) {
            
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
                    invoiceId = try container.decode(Bool.self, forKey: .invoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorMessage = try container.decode(String.self, forKey: .errorMessage)
                
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
            
            
            
            
            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)
            
            
            
            
            try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
            
            
        }
        
    }
}


