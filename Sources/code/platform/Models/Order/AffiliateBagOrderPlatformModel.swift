

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var itemId: Int

        public var priceEffective: Double

        public var quantity: Int

        public var identifier: [String: Any]

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var discount: Double

        public var sellerIdentifier: String

        public var fyndStoreId: String

        public var amountPaid: Double

        public var modifiedOn: String

        public var hsnCodeId: String

        public var companyId: Int

        public var avlQty: Int

        public var priceMarked: Double

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var id: String

        public var pdfLinks: MarketPlacePdf?

        public var itemSize: String

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case quantity

            case identifier

            case sku

            case affiliateMeta = "affiliate_meta"

            case discount

            case sellerIdentifier = "seller_identifier"

            case fyndStoreId = "fynd_store_id"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case pdfLinks = "pdf_links"

            case itemSize = "item_size"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.identifier = identifier

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.fyndStoreId = fyndStoreId

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.pdfLinks = pdfLinks

            self.itemSize = itemSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemSize = try container.decode(String.self, forKey: .itemSize)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var itemId: Int

        public var priceEffective: Double

        public var quantity: Int

        public var identifier: [String: Any]

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var discount: Double

        public var sellerIdentifier: String

        public var fyndStoreId: String

        public var amountPaid: Double

        public var modifiedOn: String

        public var hsnCodeId: String

        public var companyId: Int

        public var avlQty: Int

        public var priceMarked: Double

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var id: String

        public var pdfLinks: MarketPlacePdf?

        public var itemSize: String

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case quantity

            case identifier

            case sku

            case affiliateMeta = "affiliate_meta"

            case discount

            case sellerIdentifier = "seller_identifier"

            case fyndStoreId = "fynd_store_id"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case pdfLinks = "pdf_links"

            case itemSize = "item_size"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.identifier = identifier

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.fyndStoreId = fyndStoreId

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.pdfLinks = pdfLinks

            self.itemSize = itemSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemSize = try container.decode(String.self, forKey: .itemSize)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        }
    }
}
