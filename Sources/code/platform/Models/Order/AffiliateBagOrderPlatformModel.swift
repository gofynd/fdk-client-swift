

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemSize: String

        public var quantity: Int

        public var sellerIdentifier: String

        public var sku: String

        public var discount: Double

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var companyId: Int

        public var unitPrice: Double

        public var priceMarked: Double

        public var pdfLinks: MarketPlacePdf?

        public var identifier: [String: Any]

        public var avlQty: Int

        public var fyndStoreId: String

        public var affiliateMeta: [String: Any]

        public var id: String

        public var storeId: Int

        public var hsnCodeId: String

        public var itemId: Int

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case itemSize = "item_size"

            case quantity

            case sellerIdentifier = "seller_identifier"

            case sku

            case discount

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case pdfLinks = "pdf_links"

            case identifier

            case avlQty = "avl_qty"

            case fyndStoreId = "fynd_store_id"

            case affiliateMeta = "affiliate_meta"

            case id = "_id"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemSize = itemSize

            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier

            self.sku = sku

            self.discount = discount

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.pdfLinks = pdfLinks

            self.identifier = identifier

            self.avlQty = avlQty

            self.fyndStoreId = fyndStoreId

            self.affiliateMeta = affiliateMeta

            self.id = id

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

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
        public var itemSize: String

        public var quantity: Int

        public var sellerIdentifier: String

        public var sku: String

        public var discount: Double

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var companyId: Int

        public var unitPrice: Double

        public var priceMarked: Double

        public var pdfLinks: MarketPlacePdf?

        public var identifier: [String: Any]

        public var avlQty: Int

        public var fyndStoreId: String

        public var affiliateMeta: [String: Any]

        public var id: String

        public var storeId: Int

        public var hsnCodeId: String

        public var itemId: Int

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case itemSize = "item_size"

            case quantity

            case sellerIdentifier = "seller_identifier"

            case sku

            case discount

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case pdfLinks = "pdf_links"

            case identifier

            case avlQty = "avl_qty"

            case fyndStoreId = "fynd_store_id"

            case affiliateMeta = "affiliate_meta"

            case id = "_id"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemSize = itemSize

            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier

            self.sku = sku

            self.discount = discount

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.pdfLinks = pdfLinks

            self.identifier = identifier

            self.avlQty = avlQty

            self.fyndStoreId = fyndStoreId

            self.affiliateMeta = affiliateMeta

            self.id = id

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
