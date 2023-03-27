

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemSize: String

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var sku: String

        public var identifier: [String: Any]

        public var avlQty: Int

        public var modifiedOn: String

        public var id: String

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var unitPrice: Double

        public var companyId: Int

        public var itemId: Int

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var priceEffective: Double

        public var amountPaid: Double

        public var storeId: Int

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public enum CodingKeys: String, CodingKey {
            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case sku

            case identifier

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case id = "_id"

            case discount

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case companyId = "company_id"

            case itemId = "item_id"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.sku = sku

            self.identifier = identifier

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.id = id

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.companyId = companyId

            self.itemId = itemId

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
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

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var sku: String

        public var identifier: [String: Any]

        public var avlQty: Int

        public var modifiedOn: String

        public var id: String

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var unitPrice: Double

        public var companyId: Int

        public var itemId: Int

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var priceEffective: Double

        public var amountPaid: Double

        public var storeId: Int

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public enum CodingKeys: String, CodingKey {
            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case sku

            case identifier

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case id = "_id"

            case discount

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case companyId = "company_id"

            case itemId = "item_id"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.sku = sku

            self.identifier = identifier

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.id = id

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.companyId = companyId

            self.itemId = itemId

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }
}
