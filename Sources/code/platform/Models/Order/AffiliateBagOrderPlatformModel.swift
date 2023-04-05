

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var itemId: Int

        public var deliveryCharge: Double

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var discount: Double

        public var modifiedOn: String

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var id: String

        public var avlQty: Int

        public var companyId: Int

        public var priceMarked: Double

        public var itemSize: String

        public var storeId: Int

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var sku: String

        public var transferPrice: Int

        public var priceEffective: Double

        public var amountPaid: Double

        public var unitPrice: Double

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case itemId = "item_id"

            case deliveryCharge = "delivery_charge"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case discount

            case modifiedOn = "modified_on"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case id = "_id"

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case priceMarked = "price_marked"

            case itemSize = "item_size"

            case storeId = "store_id"

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case sku

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case unitPrice = "unit_price"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.itemId = itemId

            self.deliveryCharge = deliveryCharge

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.discount = discount

            self.modifiedOn = modifiedOn

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.id = id

            self.avlQty = avlQty

            self.companyId = companyId

            self.priceMarked = priceMarked

            self.itemSize = itemSize

            self.storeId = storeId

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.unitPrice = unitPrice

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

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
        public var fyndStoreId: String

        public var itemId: Int

        public var deliveryCharge: Double

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var discount: Double

        public var modifiedOn: String

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var id: String

        public var avlQty: Int

        public var companyId: Int

        public var priceMarked: Double

        public var itemSize: String

        public var storeId: Int

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var sku: String

        public var transferPrice: Int

        public var priceEffective: Double

        public var amountPaid: Double

        public var unitPrice: Double

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case itemId = "item_id"

            case deliveryCharge = "delivery_charge"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case discount

            case modifiedOn = "modified_on"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case id = "_id"

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case priceMarked = "price_marked"

            case itemSize = "item_size"

            case storeId = "store_id"

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case sku

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case unitPrice = "unit_price"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.itemId = itemId

            self.deliveryCharge = deliveryCharge

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.discount = discount

            self.modifiedOn = modifiedOn

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.id = id

            self.avlQty = avlQty

            self.companyId = companyId

            self.priceMarked = priceMarked

            self.itemSize = itemSize

            self.storeId = storeId

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.unitPrice = unitPrice

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
