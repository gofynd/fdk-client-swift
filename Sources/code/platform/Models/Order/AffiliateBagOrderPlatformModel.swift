

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var identifier: [String: Any]

        public var amountPaid: Double

        public var fyndStoreId: String

        public var discount: Double

        public var companyId: Int

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var itemSize: String

        public var id: String

        public var itemId: Int

        public var storeId: Int

        public var avlQty: Int

        public var modifiedOn: String

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var sku: String

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var transferPrice: Int

        public var unitPrice: Double

        public var pdfLinks: MarketPlacePdf?

        public enum CodingKeys: String, CodingKey {
            case identifier

            case amountPaid = "amount_paid"

            case fyndStoreId = "fynd_store_id"

            case discount

            case companyId = "company_id"

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case id = "_id"

            case itemId = "item_id"

            case storeId = "store_id"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case sku

            case quantity

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case pdfLinks = "pdf_links"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.identifier = identifier

            self.amountPaid = amountPaid

            self.fyndStoreId = fyndStoreId

            self.discount = discount

            self.companyId = companyId

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.id = id

            self.itemId = itemId

            self.storeId = storeId

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.pdfLinks = pdfLinks
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var identifier: [String: Any]

        public var amountPaid: Double

        public var fyndStoreId: String

        public var discount: Double

        public var companyId: Int

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var itemSize: String

        public var id: String

        public var itemId: Int

        public var storeId: Int

        public var avlQty: Int

        public var modifiedOn: String

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var sku: String

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var transferPrice: Int

        public var unitPrice: Double

        public var pdfLinks: MarketPlacePdf?

        public enum CodingKeys: String, CodingKey {
            case identifier

            case amountPaid = "amount_paid"

            case fyndStoreId = "fynd_store_id"

            case discount

            case companyId = "company_id"

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case id = "_id"

            case itemId = "item_id"

            case storeId = "store_id"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case sku

            case quantity

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case pdfLinks = "pdf_links"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.identifier = identifier

            self.amountPaid = amountPaid

            self.fyndStoreId = fyndStoreId

            self.discount = discount

            self.companyId = companyId

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.id = id

            self.itemId = itemId

            self.storeId = storeId

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.pdfLinks = pdfLinks
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
        }
    }
}
