

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: PlanChangeData
        Used By: Billing
    */

    class PlanChangeData: Codable {
        
        
        public var total: Double?
        
        public var creditNoteAmount: Double?
        
        public var settlement: Double?
        
        public var taxableAmount: Double?
        
        public var gstAmount: Double?
        
        public var grossTotal: Double?
        
        public var gst: Double?
        
        public var discount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case total = "total"
            
            case creditNoteAmount = "credit_note_amount"
            
            case settlement = "settlement"
            
            case taxableAmount = "taxable_amount"
            
            case gstAmount = "gst_amount"
            
            case grossTotal = "gross_total"
            
            case gst = "gst"
            
            case discount = "discount"
            
        }

        public init(creditNoteAmount: Double? = nil, discount: Double? = nil, grossTotal: Double? = nil, gst: Double? = nil, gstAmount: Double? = nil, settlement: Double? = nil, taxableAmount: Double? = nil, total: Double? = nil) {
            
            self.total = total
            
            self.creditNoteAmount = creditNoteAmount
            
            self.settlement = settlement
            
            self.taxableAmount = taxableAmount
            
            self.gstAmount = gstAmount
            
            self.grossTotal = grossTotal
            
            self.gst = gst
            
            self.discount = discount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditNoteAmount = try container.decode(Double.self, forKey: .creditNoteAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    settlement = try container.decode(Double.self, forKey: .settlement)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxableAmount = try container.decode(Double.self, forKey: .taxableAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstAmount = try container.decode(Double.self, forKey: .gstAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    grossTotal = try container.decode(Double.self, forKey: .grossTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gst = try container.decode(Double.self, forKey: .gst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
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
            
            
            
            
            try? container.encodeIfPresent(settlement, forKey: .settlement)
            
            
            
            
            try? container.encodeIfPresent(taxableAmount, forKey: .taxableAmount)
            
            
            
            
            try? container.encodeIfPresent(gstAmount, forKey: .gstAmount)
            
            
            
            
            try? container.encodeIfPresent(grossTotal, forKey: .grossTotal)
            
            
            
            
            try? container.encodeIfPresent(gst, forKey: .gst)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
        }
        
    }
}




