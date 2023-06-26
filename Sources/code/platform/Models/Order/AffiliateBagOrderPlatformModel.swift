

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var avlQty: Int

        public var amountPaid: Double

        public var modifiedOn: String

        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var storeId: Int

        public var sku: String

        public var companyId: Int

        public var priceEffective: Double

        public var identifier: [String: Any]

        public var id: String

        public var fyndStoreId: String

        public var unitPrice: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var deliveryCharge: Double

        public var itemSize: String

        public var discount: Double

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case quantity

            case avlQty = "avl_qty"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case storeId = "store_id"

            case sku

            case companyId = "company_id"

            case priceEffective = "price_effective"

            case identifier

            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case discount

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.avlQty = avlQty

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.storeId = storeId

            self.sku = sku

            self.companyId = companyId

            self.priceEffective = priceEffective

            self.identifier = identifier

            self.id = id

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.discount = discount

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var avlQty: Int

        public var amountPaid: Double

        public var modifiedOn: String

        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var storeId: Int

        public var sku: String

        public var companyId: Int

        public var priceEffective: Double

        public var identifier: [String: Any]

        public var id: String

        public var fyndStoreId: String

        public var unitPrice: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var deliveryCharge: Double

        public var itemSize: String

        public var discount: Double

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case quantity

            case avlQty = "avl_qty"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case storeId = "store_id"

            case sku

            case companyId = "company_id"

            case priceEffective = "price_effective"

            case identifier

            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case discount

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.avlQty = avlQty

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.storeId = storeId

            self.sku = sku

            self.companyId = companyId

            self.priceEffective = priceEffective

            self.identifier = identifier

            self.id = id

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.discount = discount

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
