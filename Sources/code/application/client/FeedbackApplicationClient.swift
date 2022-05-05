import Foundation

public extension ApplicationClient {
    class Feedback {
        var config: ApplicationConfig
        var relativeUrls = [String: String]()

        init(config: ApplicationConfig) {
            self.config = config
            var ulrs = [String: String]()

            ulrs["createAbuseReport"] = config.domain.appendAsPath("/service/application/feedback/v1.0/abuse/")

            ulrs["updateAbuseReport"] = config.domain.appendAsPath("/service/application/feedback/v1.0/abuse/")

            ulrs["getAbuseReports"] = config.domain.appendAsPath("/service/application/feedback/v1.0/abuse/entity/{entity_type}/entity-id/{entity_id}")

            ulrs["getAttributes"] = config.domain.appendAsPath("/service/application/feedback/v1.0/attributes/")

            ulrs["createAttribute"] = config.domain.appendAsPath("/service/application/feedback/v1.0/attributes/")

            ulrs["getAttribute"] = config.domain.appendAsPath("/service/application/feedback/v1.0/attributes/{slug}")

            ulrs["updateAttribute"] = config.domain.appendAsPath("/service/application/feedback/v1.0/attributes/{slug}")

            ulrs["createComment"] = config.domain.appendAsPath("/service/application/feedback/v1.0/comment/")

            ulrs["updateComment"] = config.domain.appendAsPath("/service/application/feedback/v1.0/comment/")

            ulrs["getComments"] = config.domain.appendAsPath("/service/application/feedback/v1.0/comment/entity/{entity_type}")

            ulrs["checkEligibility"] = config.domain.appendAsPath("/service/application/feedback/v1.0/config/entity/{entity_type}/entity-id/{entity_id}")

            ulrs["deleteMedia"] = config.domain.appendAsPath("/service/application/feedback/v1.0/media/")

            ulrs["createMedia"] = config.domain.appendAsPath("/service/application/feedback/v1.0/media/")

            ulrs["updateMedia"] = config.domain.appendAsPath("/service/application/feedback/v1.0/media/")

            ulrs["getMedias"] = config.domain.appendAsPath("/service/application/feedback/v1.0/media/entity/{entity_type}/entity-id/{entity_id}")

            ulrs["getReviewSummaries"] = config.domain.appendAsPath("/service/application/feedback/v1.0/rating/summary/entity/{entity_type}/entity-id/{entity_id}")

            ulrs["createReview"] = config.domain.appendAsPath("/service/application/feedback/v1.0/review/")

            ulrs["updateReview"] = config.domain.appendAsPath("/service/application/feedback/v1.0/review/")

            ulrs["getReviews"] = config.domain.appendAsPath("/service/application/feedback/v1.0/review/entity/{entity_type}/entity-id/{entity_id}")

            ulrs["getTemplates"] = config.domain.appendAsPath("/service/application/feedback/v1.0/template/")

            ulrs["createQuestion"] = config.domain.appendAsPath("/service/application/feedback/v1.0/template/qna/")

            ulrs["updateQuestion"] = config.domain.appendAsPath("/service/application/feedback/v1.0/template/qna/")

            ulrs["getQuestionAndAnswers"] = config.domain.appendAsPath("/service/application/feedback/v1.0/template/qna/entity/{entity_type}/entity-id/{entity_id}")

            ulrs["getVotes"] = config.domain.appendAsPath("/service/application/feedback/v1.0/vote/")

            ulrs["createVote"] = config.domain.appendAsPath("/service/application/feedback/v1.0/vote/")

            ulrs["updateVote"] = config.domain.appendAsPath("/service/application/feedback/v1.0/vote/")

            self.relativeUrls = ulrs
        }

        public func update(updatedUrl: [String: String]) {
            for (key, value) in updatedUrl {
                self.relativeUrls[key] = value
            }
        }

        /**
         *
         * Summary: Post a new abuse request
         * Description: Use this API to report a specific entity (question/review/comment) for abuse.
         **/
        public func createAbuseReport(
            body: ReportAbuseRequest,
            onResponse: @escaping (_ response: InsertResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["createAbuseReport"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(InsertResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Update abuse details
         * Description: Use this API to update the abuse details, i.e. status and description.
         **/
        public func updateAbuseReport(
            body: UpdateAbuseStatusRequest,
            onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["updateAbuseReport"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(UpdateResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get a list of abuse data
         * Description: Use this API to retrieve a list of abuse data from entity type and entity ID.
         **/
        public func getAbuseReports(
            entityId: String,
            entityType: String,
            id: String?,
            pageId: String?,
            pageSize: Int?,

            onResponse: @escaping (_ response: ReportAbuseGetResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = id {
                xQuery["id"] = value
            }

            if let value = pageId {
                xQuery["page_id"] = value
            }

            if let value = pageSize {
                xQuery["page_size"] = value
            }

            var fullUrl = relativeUrls["getAbuseReports"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "entity_id" + "}", with: "\(entityId)")

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "entity_type" + "}", with: "\(entityType)")

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(ReportAbuseGetResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: get paginator for getAbuseReports
         * Description: fetch the next page by calling .next(...) function
         **/
        public func getAbuseReportsPaginator(
            entityId: String,
            entityType: String,
            id: String?,
            pageSize: Int?

        ) -> Paginator<ReportAbuseGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<ReportAbuseGetResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getAbuseReports(
                    entityId: entityId,
                    entityType: entityType,
                    id: id,
                    pageId: paginator.pageId,

                    pageSize: paginator.pageSize

                ) { response, error in
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageId = response.page?.nextId
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }

        /**
         *
         * Summary: Get a list of attribute data
         * Description: Use this API to retrieve a list of all attribute data, e.g. quality, material, product fitting, packaging, etc.
         **/
        public func getAttributes(
            pageNo: Int?,
            pageSize: Int?,

            onResponse: @escaping (_ response: AttributeResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = pageNo {
                xQuery["page_no"] = value
            }

            if let value = pageSize {
                xQuery["page_size"] = value
            }

            let fullUrl = relativeUrls["getAttributes"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(AttributeResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: get paginator for getAttributes
         * Description: fetch the next page by calling .next(...) function
         **/
        public func getAttributesPaginator(
            pageSize: Int?

        ) -> Paginator<AttributeResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<AttributeResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getAttributes(
                    pageNo: paginator.pageNo,

                    pageSize: paginator.pageSize

                ) { response, error in
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageNo = (paginator.pageNo ?? 0) + 1
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }

        /**
         *
         * Summary: Add a new attribute request
         * Description: Use this API to add a new attribute (e.g. product quality/material/value for money) with its name, slug and description.
         **/
        public func createAttribute(
            body: SaveAttributeRequest,
            onResponse: @escaping (_ response: InsertResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["createAttribute"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(InsertResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get data of a single attribute
         * Description: Use this API to retrieve a single attribute data from a given slug.
         **/
        public func getAttribute(
            slug: String,

            onResponse: @escaping (_ response: Attribute?, _ error: FDKError?) -> Void
        ) {
            var fullUrl = relativeUrls["getAttribute"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(Attribute.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Update details of an attribute
         * Description: Use this API update the attribute's name and description.
         **/
        public func updateAttribute(
            slug: String,
            body: UpdateAttributeRequest,
            onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
        ) {
            var fullUrl = relativeUrls["updateAttribute"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "slug" + "}", with: "\(slug)")

            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(UpdateResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Post a new comment
         * Description: Use this API to add a new comment for a specific entity.
         **/
        public func createComment(
            body: CommentRequest,
            onResponse: @escaping (_ response: InsertResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["createComment"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(InsertResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Update the status of a comment
         * Description: Use this API to update the comment status (active or approve) along with new comment if any.
         **/
        public func updateComment(
            body: UpdateCommentRequest,
            onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["updateComment"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(UpdateResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get a list of comments
         * Description: Use this API to retrieve a list of comments for a specific entity type, e.g. products.
         **/
        public func getComments(
            entityType: String,
            id: String?,
            entityId: String?,
            userId: String?,
            pageId: String?,
            pageSize: Int?,

            onResponse: @escaping (_ response: CommentGetResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = id {
                xQuery["id"] = value
            }

            if let value = entityId {
                xQuery["entity_id"] = value
            }

            if let value = userId {
                xQuery["user_id"] = value
            }

            if let value = pageId {
                xQuery["page_id"] = value
            }

            if let value = pageSize {
                xQuery["page_size"] = value
            }

            var fullUrl = relativeUrls["getComments"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "entity_type" + "}", with: "\(entityType)")

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(CommentGetResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: get paginator for getComments
         * Description: fetch the next page by calling .next(...) function
         **/
        public func getCommentsPaginator(
            entityType: String,
            id: String?,
            entityId: String?,
            userId: String?,
            pageSize: Int?

        ) -> Paginator<CommentGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<CommentGetResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getComments(
                    entityType: entityType,
                    id: id,
                    entityId: entityId,
                    userId: userId,
                    pageId: paginator.pageId,

                    pageSize: paginator.pageSize

                ) { response, error in
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageId = response.page?.nextId
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }

        /**
         *
         * Summary: Checks eligibility to rate and review, and shows the cloud media configuration
         * Description: Use this API to check whether an entity is eligible to be rated and reviewed. Moreover, it shows the cloud media configuration too.
         **/
        public func checkEligibility(
            entityType: String,
            entityId: String,

            onResponse: @escaping (_ response: CheckEligibilityResponse?, _ error: FDKError?) -> Void
        ) {
            var fullUrl = relativeUrls["checkEligibility"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "entity_type" + "}", with: "\(entityType)")

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "entity_id" + "}", with: "\(entityId)")

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(CheckEligibilityResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Delete Media
         * Description: Use this API to delete media for an entity ID.
         **/
        public func deleteMedia(
            ids: [String],

            onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            xQuery["ids"] = ids

            let fullUrl = relativeUrls["deleteMedia"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(UpdateResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Add Media
         * Description: Use this API to add media to an entity, e.g. review.
         **/
        public func createMedia(
            body: AddMediaListRequest,
            onResponse: @escaping (_ response: InsertResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["createMedia"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(InsertResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Update Media
         * Description: Use this API to update media (archive/approve) for an entity.
         **/
        public func updateMedia(
            body: UpdateMediaListRequest,
            onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["updateMedia"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(UpdateResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get Media
         * Description: Use this API to retrieve all media from an entity.
         **/
        public func getMedias(
            entityType: String,
            entityId: String,
            id: String?,
            type: String?,
            pageId: String?,
            pageSize: Int?,

            onResponse: @escaping (_ response: MediaGetResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = id {
                xQuery["id"] = value
            }

            if let value = type {
                xQuery["type"] = value
            }

            if let value = pageId {
                xQuery["page_id"] = value
            }

            if let value = pageSize {
                xQuery["page_size"] = value
            }

            var fullUrl = relativeUrls["getMedias"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "entity_type" + "}", with: "\(entityType)")

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "entity_id" + "}", with: "\(entityId)")

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(MediaGetResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: get paginator for getMedias
         * Description: fetch the next page by calling .next(...) function
         **/
        public func getMediasPaginator(
            entityType: String,
            entityId: String,
            id: String?,
            type: String?,
            pageSize: Int?

        ) -> Paginator<MediaGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<MediaGetResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getMedias(
                    entityType: entityType,
                    entityId: entityId,
                    id: id,
                    type: type,
                    pageId: paginator.pageId,

                    pageSize: paginator.pageSize

                ) { response, error in
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageId = response.page?.nextId
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }

        /**
         *
         * Summary: Get a review summary
         * Description: Review summary gives ratings and attribute metrics of a review per entity. Use this API to retrieve the following response data: review count, rating average. 'review metrics'/'attribute rating metrics' which contains name, type, average and count.
         **/
        public func getReviewSummaries(
            entityType: String,
            entityId: String,
            id: String?,
            pageId: String?,
            pageSize: Int?,

            onResponse: @escaping (_ response: ReviewMetricGetResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = id {
                xQuery["id"] = value
            }

            if let value = pageId {
                xQuery["page_id"] = value
            }

            if let value = pageSize {
                xQuery["page_size"] = value
            }

            var fullUrl = relativeUrls["getReviewSummaries"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "entity_type" + "}", with: "\(entityType)")

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "entity_id" + "}", with: "\(entityId)")

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(ReviewMetricGetResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: get paginator for getReviewSummaries
         * Description: fetch the next page by calling .next(...) function
         **/
        public func getReviewSummariesPaginator(
            entityType: String,
            entityId: String,
            id: String?,
            pageSize: Int?

        ) -> Paginator<ReviewMetricGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<ReviewMetricGetResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getReviewSummaries(
                    entityType: entityType,
                    entityId: entityId,
                    id: id,
                    pageId: paginator.pageId,

                    pageSize: paginator.pageSize

                ) { response, error in
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageId = response.page?.nextId
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }

        /**
         *
         * Summary: Add customer reviews
         * Description: Use this API to add customer reviews for a specific entity along with the following data: attributes rating, entity rating, title, description, media resources and template ID.
         **/
        public func createReview(
            body: UpdateReviewRequest,
            onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["createReview"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(UpdateResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Update customer reviews
         * Description: Use this API to update customer reviews for a specific entity along with following data: attributes rating, entity rating, title, description, media resources and template ID.
         **/
        public func updateReview(
            body: UpdateReviewRequest,
            onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["updateReview"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(UpdateResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get list of customer reviews
         * Description: Use this API to retrieve a list of customer reviews based on entity and filters provided.
         **/
        public func getReviews(
            entityType: String,
            entityId: String,
            id: String?,
            userId: String?,
            media: String?,
            rating: [Double]?,
            attributeRating: [String]?,
            facets: Bool?,
            sort: String?,
            active: Bool?,
            approve: Bool?,
            pageId: String?,
            pageSize: Int?,

            onResponse: @escaping (_ response: ReviewGetResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = id {
                xQuery["id"] = value
            }

            if let value = userId {
                xQuery["user_id"] = value
            }

            if let value = media {
                xQuery["media"] = value
            }

            if let value = rating {
                xQuery["rating"] = value
            }

            if let value = attributeRating {
                xQuery["attribute_rating"] = value
            }

            if let value = facets {
                xQuery["facets"] = value
            }

            if let value = sort {
                xQuery["sort"] = value
            }

            if let value = active {
                xQuery["active"] = value
            }

            if let value = approve {
                xQuery["approve"] = value
            }

            if let value = pageId {
                xQuery["page_id"] = value
            }

            if let value = pageSize {
                xQuery["page_size"] = value
            }

            var fullUrl = relativeUrls["getReviews"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "entity_type" + "}", with: "\(entityType)")

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "entity_id" + "}", with: "\(entityId)")

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(ReviewGetResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: get paginator for getReviews
         * Description: fetch the next page by calling .next(...) function
         **/
        public func getReviewsPaginator(
            entityType: String,
            entityId: String,
            id: String?,
            userId: String?,
            media: String?,
            rating: [Double]?,
            attributeRating: [String]?,
            facets: Bool?,
            sort: String?,
            active: Bool?,
            approve: Bool?,
            pageSize: Int?

        ) -> Paginator<ReviewGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<ReviewGetResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getReviews(
                    entityType: entityType,
                    entityId: entityId,
                    id: id,
                    userId: userId,
                    media: media,
                    rating: rating,
                    attributeRating: attributeRating,
                    facets: facets,
                    sort: sort,
                    active: active,
                    approve: approve,
                    pageId: paginator.pageId,

                    pageSize: paginator.pageSize

                ) { response, error in
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageId = response.page?.nextId
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }

        /**
         *
         * Summary: Get the feedback templates for a product or l3
         * Description: Use this API to retrieve the details of the following feedback template. order, delivered, application, seller, order, placed, product
         **/
        public func getTemplates(
            templateId: String?,
            entityId: String?,
            entityType: String?,

            onResponse: @escaping (_ response: TemplateGetResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = templateId {
                xQuery["template_id"] = value
            }

            if let value = entityId {
                xQuery["entity_id"] = value
            }

            if let value = entityType {
                xQuery["entity_type"] = value
            }

            let fullUrl = relativeUrls["getTemplates"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(TemplateGetResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Create a new question
         * Description: Use this API to create a new question with following data- tags, text, type, choices for MCQ type questions, maximum length of answer.
         **/
        public func createQuestion(
            body: CreateQNARequest,
            onResponse: @escaping (_ response: InsertResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["createQuestion"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(InsertResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Update a question
         * Description: Use this API to update the status of a question, its tags and its choices.
         **/
        public func updateQuestion(
            body: UpdateQNARequest,
            onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["updateQuestion"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(UpdateResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get a list of QnA
         * Description: Use this API to retrieve a list of questions and answers for a given entity.
         **/
        public func getQuestionAndAnswers(
            entityType: String,
            entityId: String,
            id: String?,
            userId: String?,
            showAnswer: Bool?,
            pageId: String?,
            pageSize: Int?,

            onResponse: @escaping (_ response: QNAGetResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = id {
                xQuery["id"] = value
            }

            if let value = userId {
                xQuery["user_id"] = value
            }

            if let value = showAnswer {
                xQuery["show_answer"] = value
            }

            if let value = pageId {
                xQuery["page_id"] = value
            }

            if let value = pageSize {
                xQuery["page_size"] = value
            }

            var fullUrl = relativeUrls["getQuestionAndAnswers"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "entity_type" + "}", with: "\(entityType)")

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "entity_id" + "}", with: "\(entityId)")

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(QNAGetResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: get paginator for getQuestionAndAnswers
         * Description: fetch the next page by calling .next(...) function
         **/
        public func getQuestionAndAnswersPaginator(
            entityType: String,
            entityId: String,
            id: String?,
            userId: String?,
            showAnswer: Bool?,
            pageSize: Int?

        ) -> Paginator<QNAGetResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<QNAGetResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getQuestionAndAnswers(
                    entityType: entityType,
                    entityId: entityId,
                    id: id,
                    userId: userId,
                    showAnswer: showAnswer,
                    pageId: paginator.pageId,

                    pageSize: paginator.pageSize

                ) { response, error in
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageId = response.page?.nextId
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }

        /**
         *
         * Summary: Get a list of votes
         * Description: Use this API to retrieve a list of votes of a current logged in user. Votes can be filtered using `ref_type`, i.e. review | comment.
         **/
        public func getVotes(
            id: String?,
            refType: String?,
            pageNo: Int?,
            pageSize: Int?,

            onResponse: @escaping (_ response: VoteResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:]

            if let value = id {
                xQuery["id"] = value
            }

            if let value = refType {
                xQuery["ref_type"] = value
            }

            if let value = pageNo {
                xQuery["page_no"] = value
            }

            if let value = pageSize {
                xQuery["page_size"] = value
            }

            let fullUrl = relativeUrls["getVotes"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(VoteResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: get paginator for getVotes
         * Description: fetch the next page by calling .next(...) function
         **/
        public func getVotesPaginator(
            id: String?,
            refType: String?,
            pageSize: Int?

        ) -> Paginator<VoteResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<VoteResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getVotes(
                    id: id,
                    refType: refType,
                    pageNo: paginator.pageNo,

                    pageSize: paginator.pageSize

                ) { response, error in
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageNo = (paginator.pageNo ?? 0) + 1
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }

        /**
         *
         * Summary: Create a new vote
         * Description: Use this API to create a new vote, where the action could be an upvote or a downvote. This is useful when you want to give a vote (say upvote) to a review (ref_type) of a product (entity_type).
         **/
        public func createVote(
            body: VoteRequest,
            onResponse: @escaping (_ response: InsertResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["createVote"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(InsertResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Update a vote
         * Description: Use this API to update a vote with a new action, i.e. either an upvote or a downvote.
         **/
        public func updateVote(
            body: UpdateVoteRequest,
            onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["updateVote"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "put",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(UpdateResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }
    }
}
