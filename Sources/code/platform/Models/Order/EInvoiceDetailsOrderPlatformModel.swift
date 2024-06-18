

import Foundation


public extension PlatformClient.Order {
    /*
        Model: EInvoiceDetails
        Used By: Order
    */

    class EInvoiceDetails: Codable {
        
        
        public var irnDetails: EInvoiceIrnDetails?
        
        public var errorDetails: [EInvoiceErrorDetails]?
        

        public enum CodingKeys: String, CodingKey {
            
            case irnDetails = "irn_details"
            
            case errorDetails = "error_details"
            
        }

        public init(errorDetails: [EInvoiceErrorDetails]? = nil, irnDetails: EInvoiceIrnDetails? = nil) {
            
            self.irnDetails = irnDetails
            
            self.errorDetails = errorDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    irnDetails = try container.decode(EInvoiceIrnDetails.self, forKey: .irnDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorDetails = try container.decode([EInvoiceErrorDetails].self, forKey: .errorDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(irnDetails, forKey: .irnDetails)
            
            
            
            
            try? container.encodeIfPresent(errorDetails, forKey: .errorDetails)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: EInvoiceDetails
        Used By: Order
    */

    class EInvoiceDetails: Codable {
        
        
        public var irnDetails: EInvoiceIrnDetails?
        
        public var errorDetails: [EInvoiceErrorDetails]?
        

        public enum CodingKeys: String, CodingKey {
            
            case irnDetails = "irn_details"
            
            case errorDetails = "error_details"
            
        }

        public init(errorDetails: [EInvoiceErrorDetails]? = nil, irnDetails: EInvoiceIrnDetails? = nil) {
            
            self.irnDetails = irnDetails
            
            self.errorDetails = errorDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    irnDetails = try container.decode(EInvoiceIrnDetails.self, forKey: .irnDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorDetails = try container.decode([EInvoiceErrorDetails].self, forKey: .errorDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(irnDetails, forKey: .irnDetails)
            
            
            
            
            try? container.encodeIfPresent(errorDetails, forKey: .errorDetails)
            
            
        }
        
    }
}


