

import Foundation
public extension PlatformClient {
    /*
        Model: AffiliateBag
        Used By: Order
    */

    class AffiliateBag: Codable {
        
        
        public var sku: String
        
        public var unitPrice: Double
        
        public var priceMarked: Double
        
        public var storeId: Int
        
        public var avlQty: Int
        
        public var affiliateMeta: [String: Any]
        
        public var identifier: [String: Any]
        
        public var amountPaid: Double
        
        public var quantity: Int
        
        public var discount: Double
        
        public var sellerIdentifier: String
        
        public var fyndStoreId: String
        
        public var modifiedOn: String
        
        public var deliveryCharge: Double
        
        public var companyId: Int
        
        public var itemId: Int
        
        public var priceEffective: Double
        
        public var id: String
        
        public var itemSize: String
        
        public var hsnCodeId: String
        
        public var pdfLinks: MarketPlacePdf?
        
        public var affiliateStoreId: String
        
        public var transferPrice: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case sku = "sku"
            
            case unitPrice = "unit_price"
            
            case priceMarked = "price_marked"
            
            case storeId = "store_id"
            
            case avlQty = "avl_qty"
            
            case affiliateMeta = "affiliate_meta"
            
            case identifier = "identifier"
            
            case amountPaid = "amount_paid"
            
            case quantity = "quantity"
            
            case discount = "discount"
            
            case sellerIdentifier = "seller_identifier"
            
            case fyndStoreId = "fynd_store_id"
            
            case modifiedOn = "modified_on"
            
            case deliveryCharge = "delivery_charge"
            
            case companyId = "company_id"
            
            case itemId = "item_id"
            
            case priceEffective = "price_effective"
            
            case id = "_id"
            
            case itemSize = "item_size"
            
            case hsnCodeId = "hsn_code_id"
            
            case pdfLinks = "pdf_links"
            
            case affiliateStoreId = "affiliate_store_id"
            
            case transferPrice = "transfer_price"
            
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            
            self.sku = sku
            
            self.unitPrice = unitPrice
            
            self.priceMarked = priceMarked
            
            self.storeId = storeId
            
            self.avlQty = avlQty
            
            self.affiliateMeta = affiliateMeta
            
            self.identifier = identifier
            
            self.amountPaid = amountPaid
            
            self.quantity = quantity
            
            self.discount = discount
            
            self.sellerIdentifier = sellerIdentifier
            
            self.fyndStoreId = fyndStoreId
            
            self.modifiedOn = modifiedOn
            
            self.deliveryCharge = deliveryCharge
            
            self.companyId = companyId
            
            self.itemId = itemId
            
            self.priceEffective = priceEffective
            
            self.id = id
            
            self.itemSize = itemSize
            
            self.hsnCodeId = hsnCodeId
            
            self.pdfLinks = pdfLinks
            
            self.affiliateStoreId = affiliateStoreId
            
            self.transferPrice = transferPrice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                sku = try container.decode(String.self, forKey: .sku)
                
            
            
            
                unitPrice = try container.decode(Double.self, forKey: .unitPrice)
                
            
            
            
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
            
            
            
                storeId = try container.decode(Int.self, forKey: .storeId)
                
            
            
            
                avlQty = try container.decode(Int.self, forKey: .avlQty)
                
            
            
            
                affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
                
            
            
            
                identifier = try container.decode([String: Any].self, forKey: .identifier)
                
            
            
            
                amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                
            
            
            
                quantity = try container.decode(Int.self, forKey: .quantity)
                
            
            
            
                discount = try container.decode(Double.self, forKey: .discount)
                
            
            
            
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
            
            
            
                fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                itemId = try container.decode(Int.self, forKey: .itemId)
                
            
            
            
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
            
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                itemSize = try container.decode(String.self, forKey: .itemSize)
                
            
            
            
                hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
                
            
            
            
                do {
                    pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
                
            
            
            
                transferPrice = try container.decode(Int.self, forKey: .transferPrice)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sku, forKey: .sku)
            
            
            
            
            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
            
            
            
            
            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
            
            
            
            
            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
            
            
            
            
            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
            
            
            
            
            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
            
            
            
            
            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
            
            
        }
        
    }
}
