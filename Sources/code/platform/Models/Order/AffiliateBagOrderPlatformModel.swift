

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var avlQty: Int

        public var modifiedOn: String

        public var sku: String

        public var priceMarked: Double

        public var quantity: Int

        public var transferPrice: Int

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var companyId: Int

        public var affiliateStoreId: String

        public var itemId: Int

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var deliveryCharge: Double

        public var id: String

        public var fyndStoreId: String

        public var amountPaid: Double

        public var itemSize: String

        public var priceEffective: Double

        public var hsnCodeId: String

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case sku

            case priceMarked = "price_marked"

            case quantity

            case transferPrice = "transfer_price"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case discount

            case affiliateMeta = "affiliate_meta"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.sku = sku

            self.priceMarked = priceMarked

            self.quantity = quantity

            self.transferPrice = transferPrice

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.fyndStoreId = fyndStoreId

            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            quantity = try container.decode(Int.self, forKey: .quantity)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var avlQty: Int

        public var modifiedOn: String

        public var sku: String

        public var priceMarked: Double

        public var quantity: Int

        public var transferPrice: Int

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var companyId: Int

        public var affiliateStoreId: String

        public var itemId: Int

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var deliveryCharge: Double

        public var id: String

        public var fyndStoreId: String

        public var amountPaid: Double

        public var itemSize: String

        public var priceEffective: Double

        public var hsnCodeId: String

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case sku

            case priceMarked = "price_marked"

            case quantity

            case transferPrice = "transfer_price"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case discount

            case affiliateMeta = "affiliate_meta"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.sku = sku

            self.priceMarked = priceMarked

            self.quantity = quantity

            self.transferPrice = transferPrice

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.fyndStoreId = fyndStoreId

            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            quantity = try container.decode(Int.self, forKey: .quantity)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)
        }
    }
}
