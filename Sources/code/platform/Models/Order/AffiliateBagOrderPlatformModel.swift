

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var id: String

        public var sku: String

        public var identifier: [String: Any]

        public var companyId: Int

        public var priceMarked: Double

        public var transferPrice: Int

        public var quantity: Int

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var itemId: Int

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var storeId: Int

        public var modifiedOn: String

        public var itemSize: String

        public var fyndStoreId: String

        public var unitPrice: Double

        public var amountPaid: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case sku

            case identifier

            case companyId = "company_id"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case quantity

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case itemId = "item_id"

            case discount

            case affiliateMeta = "affiliate_meta"

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case itemSize = "item_size"

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case amountPaid = "amount_paid"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.sku = sku

            self.identifier = identifier

            self.companyId = companyId

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.itemId = itemId

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.amountPaid = amountPaid

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var id: String

        public var sku: String

        public var identifier: [String: Any]

        public var companyId: Int

        public var priceMarked: Double

        public var transferPrice: Int

        public var quantity: Int

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var itemId: Int

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var storeId: Int

        public var modifiedOn: String

        public var itemSize: String

        public var fyndStoreId: String

        public var unitPrice: Double

        public var amountPaid: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case sku

            case identifier

            case companyId = "company_id"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case quantity

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case itemId = "item_id"

            case discount

            case affiliateMeta = "affiliate_meta"

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case itemSize = "item_size"

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case amountPaid = "amount_paid"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.sku = sku

            self.identifier = identifier

            self.companyId = companyId

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.itemId = itemId

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.amountPaid = amountPaid

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
        }
    }
}
