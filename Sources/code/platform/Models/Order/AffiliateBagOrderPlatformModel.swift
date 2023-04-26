

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateMeta: [String: Any]

        public var itemId: Int

        public var avlQty: Int

        public var amountPaid: Double

        public var discount: Double

        public var id: String

        public var itemSize: String

        public var priceMarked: Double

        public var unitPrice: Double

        public var transferPrice: Int

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var storeId: Int

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var quantity: Int

        public var sku: String

        public var identifier: [String: Any]

        public var companyId: Int

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case itemId = "item_id"

            case avlQty = "avl_qty"

            case amountPaid = "amount_paid"

            case discount

            case id = "_id"

            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case sku

            case identifier

            case companyId = "company_id"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateMeta = affiliateMeta

            self.itemId = itemId

            self.avlQty = avlQty

            self.amountPaid = amountPaid

            self.discount = discount

            self.id = id

            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.sku = sku

            self.identifier = identifier

            self.companyId = companyId

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemId = try container.decode(Int.self, forKey: .itemId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateMeta: [String: Any]

        public var itemId: Int

        public var avlQty: Int

        public var amountPaid: Double

        public var discount: Double

        public var id: String

        public var itemSize: String

        public var priceMarked: Double

        public var unitPrice: Double

        public var transferPrice: Int

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var storeId: Int

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var quantity: Int

        public var sku: String

        public var identifier: [String: Any]

        public var companyId: Int

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case itemId = "item_id"

            case avlQty = "avl_qty"

            case amountPaid = "amount_paid"

            case discount

            case id = "_id"

            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case sku

            case identifier

            case companyId = "company_id"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateMeta = affiliateMeta

            self.itemId = itemId

            self.avlQty = avlQty

            self.amountPaid = amountPaid

            self.discount = discount

            self.id = id

            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.sku = sku

            self.identifier = identifier

            self.companyId = companyId

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemId = try container.decode(Int.self, forKey: .itemId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
