

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateStoreId: String

        public var companyId: Int

        public var priceEffective: Double

        public var unitPrice: Double

        public var transferPrice: Int

        public var storeId: Int

        public var fyndStoreId: String

        public var itemSize: String

        public var itemId: Int

        public var avlQty: Int

        public var sellerIdentifier: String

        public var deliveryCharge: Double

        public var sku: String

        public var id: String

        public var amountPaid: Double

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var modifiedOn: String

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case priceEffective = "price_effective"

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case itemSize = "item_size"

            case itemId = "item_id"

            case avlQty = "avl_qty"

            case sellerIdentifier = "seller_identifier"

            case deliveryCharge = "delivery_charge"

            case sku

            case id = "_id"

            case amountPaid = "amount_paid"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case modifiedOn = "modified_on"

            case discount

            case pdfLinks = "pdf_links"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.priceEffective = priceEffective

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.itemSize = itemSize

            self.itemId = itemId

            self.avlQty = avlQty

            self.sellerIdentifier = sellerIdentifier

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.id = id

            self.amountPaid = amountPaid

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.modifiedOn = modifiedOn

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            itemId = try container.decode(Int.self, forKey: .itemId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateStoreId: String

        public var companyId: Int

        public var priceEffective: Double

        public var unitPrice: Double

        public var transferPrice: Int

        public var storeId: Int

        public var fyndStoreId: String

        public var itemSize: String

        public var itemId: Int

        public var avlQty: Int

        public var sellerIdentifier: String

        public var deliveryCharge: Double

        public var sku: String

        public var id: String

        public var amountPaid: Double

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var modifiedOn: String

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case priceEffective = "price_effective"

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case itemSize = "item_size"

            case itemId = "item_id"

            case avlQty = "avl_qty"

            case sellerIdentifier = "seller_identifier"

            case deliveryCharge = "delivery_charge"

            case sku

            case id = "_id"

            case amountPaid = "amount_paid"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case modifiedOn = "modified_on"

            case discount

            case pdfLinks = "pdf_links"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.priceEffective = priceEffective

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.itemSize = itemSize

            self.itemId = itemId

            self.avlQty = avlQty

            self.sellerIdentifier = sellerIdentifier

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.id = id

            self.amountPaid = amountPaid

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.modifiedOn = modifiedOn

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            itemId = try container.decode(Int.self, forKey: .itemId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
