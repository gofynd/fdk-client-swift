

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var discount: Double

        public var avlQty: Int

        public var unitPrice: Double

        public var sellerIdentifier: String

        public var deliveryCharge: Double

        public var sku: String

        public var priceMarked: Double

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var itemId: Int

        public var modifiedOn: String

        public var transferPrice: Int

        public var companyId: Int

        public var quantity: Int

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public var id: String

        public var hsnCodeId: String

        public var itemSize: String

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case discount

            case avlQty = "avl_qty"

            case unitPrice = "unit_price"

            case sellerIdentifier = "seller_identifier"

            case deliveryCharge = "delivery_charge"

            case sku

            case priceMarked = "price_marked"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case quantity

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"

            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.discount = discount

            self.avlQty = avlQty

            self.unitPrice = unitPrice

            self.sellerIdentifier = sellerIdentifier

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.priceMarked = priceMarked

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId

            self.id = id

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Double.self, forKey: .discount)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var discount: Double

        public var avlQty: Int

        public var unitPrice: Double

        public var sellerIdentifier: String

        public var deliveryCharge: Double

        public var sku: String

        public var priceMarked: Double

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var itemId: Int

        public var modifiedOn: String

        public var transferPrice: Int

        public var companyId: Int

        public var quantity: Int

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public var id: String

        public var hsnCodeId: String

        public var itemSize: String

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case discount

            case avlQty = "avl_qty"

            case unitPrice = "unit_price"

            case sellerIdentifier = "seller_identifier"

            case deliveryCharge = "delivery_charge"

            case sku

            case priceMarked = "price_marked"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case quantity

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"

            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.discount = discount

            self.avlQty = avlQty

            self.unitPrice = unitPrice

            self.sellerIdentifier = sellerIdentifier

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.priceMarked = priceMarked

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId

            self.id = id

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Double.self, forKey: .discount)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
