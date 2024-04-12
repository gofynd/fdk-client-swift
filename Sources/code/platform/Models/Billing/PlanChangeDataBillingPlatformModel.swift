

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: PlanChangeData
        Used By: Billing
    */

    class PlanChangeData: Codable {
        
        
        public var total: Int?
        
        public var creditNoteAmount: Int?
        
        public var taxableAmount: Int?
        
        public var gstAmount: Int?
        
        public var grossTotal: Int?
        
        public var gst: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case total = "total"
            
            case creditNoteAmount = "credit_note_amount"
            
            case taxableAmount = "taxable_amount"
            
            case gstAmount = "gst_amount"
            
            case grossTotal = "gross_total"
            
            case gst = "gst"
            
        }

        public init(creditNoteAmount: Int? = nil, grossTotal: Int? = nil, gst: Int? = nil, gstAmount: Int? = nil, taxableAmount: Int? = nil, total: Int? = nil) {
            
            self.total = total
            
            self.creditNoteAmount = creditNoteAmount
            
            self.taxableAmount = taxableAmount
            
            self.gstAmount = gstAmount
            
            self.grossTotal = grossTotal
            
            self.gst = gst
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditNoteAmount = try container.decode(Int.self, forKey: .creditNoteAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxableAmount = try container.decode(Int.self, forKey: .taxableAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstAmount = try container.decode(Int.self, forKey: .gstAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    grossTotal = try container.decode(Int.self, forKey: .grossTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gst = try container.decode(Int.self, forKey: .gst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(creditNoteAmount, forKey: .creditNoteAmount)
            
            
            
            
            try? container.encodeIfPresent(taxableAmount, forKey: .taxableAmount)
            
            
            
            
            try? container.encodeIfPresent(gstAmount, forKey: .gstAmount)
            
            
            
            
            try? container.encodeIfPresent(grossTotal, forKey: .grossTotal)
            
            
            
            
            try? container.encodeIfPresent(gst, forKey: .gst)
            
            
        }
        
    }
}




