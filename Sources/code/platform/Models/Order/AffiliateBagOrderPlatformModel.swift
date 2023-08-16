

import Foundation


public extension PlatformClient.Order {
    /*
        Model: AffiliateBag
        Used By: Order
    */

    class AffiliateBag: Codable {
        
        
        public var pdfLinks: MarketPlacePdf?
        
        public var storeId: Int
        
        public var sku: String
        
        public var discount: Double
        
        public var unitPrice: Double
        
        public var priceEffective: Double
        
        public var affiliateStoreId: String
        
        public var identifier: [String: Any]
        
        public var sellerIdentifier: String
        
        public var itemSize: String
        
        public var amountPaid: Double
        
        public var fyndStoreId: String
        
        public var itemId: Int
        
        public var deliveryCharge: Double
        
        public var avlQty: Int
        
        public var priceMarked: Double
        
        public var quantity: Int
        
        public var companyId: Int
        
        public var hsnCodeId: String
        
        public var id: String
        
        public var affiliateMeta: [String: Any]
        
        public var modifiedOn: String
        
        public var transferPrice: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case pdfLinks = "pdf_links"
            
            case storeId = "store_id"
            
            case sku = "sku"
            
            case discount = "discount"
            
            case unitPrice = "unit_price"
            
            case priceEffective = "price_effective"
            
            case affiliateStoreId = "affiliate_store_id"
            
            case identifier = "identifier"
            
            case sellerIdentifier = "seller_identifier"
            
            case itemSize = "item_size"
            
            case amountPaid = "amount_paid"
            
            case fyndStoreId = "fynd_store_id"
            
            case itemId = "item_id"
            
            case deliveryCharge = "delivery_charge"
            
            case avlQty = "avl_qty"
            
            case priceMarked = "price_marked"
            
            case quantity = "quantity"
            
            case companyId = "company_id"
            
            case hsnCodeId = "hsn_code_id"
            
            case id = "_id"
            
            case affiliateMeta = "affiliate_meta"
            
            case modifiedOn = "modified_on"
            
            case transferPrice = "transfer_price"
            
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            
            self.pdfLinks = pdfLinks
            
            self.storeId = storeId
            
            self.sku = sku
            
            self.discount = discount
            
            self.unitPrice = unitPrice
            
            self.priceEffective = priceEffective
            
            self.affiliateStoreId = affiliateStoreId
            
            self.identifier = identifier
            
            self.sellerIdentifier = sellerIdentifier
            
            self.itemSize = itemSize
            
            self.amountPaid = amountPaid
            
            self.fyndStoreId = fyndStoreId
            
            self.itemId = itemId
            
            self.deliveryCharge = deliveryCharge
            
            self.avlQty = avlQty
            
            self.priceMarked = priceMarked
            
            self.quantity = quantity
            
            self.companyId = companyId
            
            self.hsnCodeId = hsnCodeId
            
            self.id = id
            
            self.affiliateMeta = affiliateMeta
            
            self.modifiedOn = modifiedOn
            
            self.transferPrice = transferPrice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                storeId = try container.decode(Int.self, forKey: .storeId)
                
            
            
            
                sku = try container.decode(String.self, forKey: .sku)
                
            
            
            
                discount = try container.decode(Double.self, forKey: .discount)
                
            
            
            
                unitPrice = try container.decode(Double.self, forKey: .unitPrice)
                
            
            
            
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
            
            
            
                affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
                
            
            
            
                identifier = try container.decode([String: Any].self, forKey: .identifier)
                
            
            
            
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
            
            
            
                itemSize = try container.decode(String.self, forKey: .itemSize)
                
            
            
            
                amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                
            
            
            
                fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
                
            
            
            
                itemId = try container.decode(Int.self, forKey: .itemId)
                
            
            
            
                deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
                
            
            
            
                avlQty = try container.decode(Int.self, forKey: .avlQty)
                
            
            
            
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
            
            
            
                quantity = try container.decode(Int.self, forKey: .quantity)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
                
            
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                transferPrice = try container.decode(Int.self, forKey: .transferPrice)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
            
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(sku, forKey: .sku)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            
            
            
            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: AffiliateBag
        Used By: Order
    */

    class AffiliateBag: Codable {
        
        
        public var pdfLinks: MarketPlacePdf?
        
        public var storeId: Int
        
        public var sku: String
        
        public var discount: Double
        
        public var unitPrice: Double
        
        public var priceEffective: Double
        
        public var affiliateStoreId: String
        
        public var identifier: [String: Any]
        
        public var sellerIdentifier: String
        
        public var itemSize: String
        
        public var amountPaid: Double
        
        public var fyndStoreId: String
        
        public var itemId: Int
        
        public var deliveryCharge: Double
        
        public var avlQty: Int
        
        public var priceMarked: Double
        
        public var quantity: Int
        
        public var companyId: Int
        
        public var hsnCodeId: String
        
        public var id: String
        
        public var affiliateMeta: [String: Any]
        
        public var modifiedOn: String
        
        public var transferPrice: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case pdfLinks = "pdf_links"
            
            case storeId = "store_id"
            
            case sku = "sku"
            
            case discount = "discount"
            
            case unitPrice = "unit_price"
            
            case priceEffective = "price_effective"
            
            case affiliateStoreId = "affiliate_store_id"
            
            case identifier = "identifier"
            
            case sellerIdentifier = "seller_identifier"
            
            case itemSize = "item_size"
            
            case amountPaid = "amount_paid"
            
            case fyndStoreId = "fynd_store_id"
            
            case itemId = "item_id"
            
            case deliveryCharge = "delivery_charge"
            
            case avlQty = "avl_qty"
            
            case priceMarked = "price_marked"
            
            case quantity = "quantity"
            
            case companyId = "company_id"
            
            case hsnCodeId = "hsn_code_id"
            
            case id = "_id"
            
            case affiliateMeta = "affiliate_meta"
            
            case modifiedOn = "modified_on"
            
            case transferPrice = "transfer_price"
            
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            
            self.pdfLinks = pdfLinks
            
            self.storeId = storeId
            
            self.sku = sku
            
            self.discount = discount
            
            self.unitPrice = unitPrice
            
            self.priceEffective = priceEffective
            
            self.affiliateStoreId = affiliateStoreId
            
            self.identifier = identifier
            
            self.sellerIdentifier = sellerIdentifier
            
            self.itemSize = itemSize
            
            self.amountPaid = amountPaid
            
            self.fyndStoreId = fyndStoreId
            
            self.itemId = itemId
            
            self.deliveryCharge = deliveryCharge
            
            self.avlQty = avlQty
            
            self.priceMarked = priceMarked
            
            self.quantity = quantity
            
            self.companyId = companyId
            
            self.hsnCodeId = hsnCodeId
            
            self.id = id
            
            self.affiliateMeta = affiliateMeta
            
            self.modifiedOn = modifiedOn
            
            self.transferPrice = transferPrice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                storeId = try container.decode(Int.self, forKey: .storeId)
                
            
            
            
                sku = try container.decode(String.self, forKey: .sku)
                
            
            
            
                discount = try container.decode(Double.self, forKey: .discount)
                
            
            
            
                unitPrice = try container.decode(Double.self, forKey: .unitPrice)
                
            
            
            
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
            
            
            
                affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
                
            
            
            
                identifier = try container.decode([String: Any].self, forKey: .identifier)
                
            
            
            
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
            
            
            
                itemSize = try container.decode(String.self, forKey: .itemSize)
                
            
            
            
                amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                
            
            
            
                fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
                
            
            
            
                itemId = try container.decode(Int.self, forKey: .itemId)
                
            
            
            
                deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
                
            
            
            
                avlQty = try container.decode(Int.self, forKey: .avlQty)
                
            
            
            
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
            
            
            
                quantity = try container.decode(Int.self, forKey: .quantity)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
                
            
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                transferPrice = try container.decode(Int.self, forKey: .transferPrice)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
            
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(sku, forKey: .sku)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            
            
            
            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
            
            
        }
        
    }
}


